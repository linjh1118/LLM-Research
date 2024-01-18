# TALLRec:An Effective and Efficient Tuning Framework to Align Large Language Model with Recommendation
## 太长不看版
## 摘要
大语言模型（LLM）在很多领域有出色表现 → 研究者在推荐领域中使用LLM

但是由于：
- LLM的训练任务和推荐任务存在实质性的差异
- 在预训练时推荐的数据不足

LLM表现一般

因此提出了TALLRec这种高效的优化框架来用推荐调整LLMs

调整后效果：
- 推荐能力提升
- 高效（少样本 可在一个3090上运行）
- 泛化能力强（generalization ability)

## 引言
现有研究中：使用上下文学习和传统推荐模型（效果不好）

<img width="410" alt="1 1" src="https://github.com/4M4forU/Reading-Notes-about-Ai/assets/156566054/7358a6a5-8ad7-401c-b60e-944c8851e93d">

失败的原因：
- 对于LLM来说推荐和语言处理任务是有差距的。
- LLM仍然被下层的推荐模型限制，能力不足。

本文利用推荐任务调整LLMs。考虑到核心是使用指令微调（Instruction Tuning)，使用了TALLRec这种轻量级的调整框架达到高效的目的。

TALLRec高效性：
- TALLRec可以利用少量样本快速激发LLMs的推荐能力。
- LLMs通过TALLRec训练后拥有良好的跨领域泛化能力。

本文贡献：
- 研究了一个推荐方向的新问题——用推荐调整LLMs来揭示上下文学习的局限性并强调指令微调的重要。
- 使用TALLRec框架构造LRLM使得用推荐调整LLMs的过程高效。
- 通过实验证明TALLRec的高效和强大的泛化能力。

## 框架介绍
### 准备工作
指令微调的四个步骤：
1. 用自然语言定义一个包含任务的明确要求的“任务指令”（Task Instruction）
2. 用自然语言制定实施任务的输入输出命名为“任务输入”（Task Input）和“任务输出”（Task Output）
3. 调整“任务指令”和“任务输入”形成“指令输入”（Instruction Input）并将“任务输出”作为相应的“指令输出”（Instruction Output）
4. 基于<“指令输入”，“指令输出”>优化LLMs

推荐调优的任务制定：
1. 为了用命名为 “M” 的LLM创建能预测用户会喜欢一个新项目的LRLM，利用推荐数据对LLM进行推荐调优。
2. 将推荐数据设计成指令微调的一部分，创立一个“Task Instruction”基于之前的交互引导模型决定用户是否喜欢新项目并回答。
3. 根据交互次数和文本描述表达给项目按序排名得到用户对于项目喜欢与否的等级，再基于此把之前交互过的项目分成两组来设计“Task Input”，此外它还会包括用户未见的新项目。
4. 最后合并“Task Instruction”和“Task Input”作为“Instruction Input”，设置预期的“Instruction Output”为是或否来推荐调优。

### TALLRec框架
<img width="299" alt="1 2" src="https://github.com/4M4forU/Reading-Notes-about-Ai/assets/156566054/77a9d457-a2d7-4ea7-a500-d5618e3629cf">

x,y代表指令输入和指令输出，y_t是y的第t个取值。φ是M的原始界限。Z是训练设置的范围

轻量化调优，引出可训练秩分解矩阵的LoRA，其参数为θ

<img width="323" alt="1 3" src="https://github.com/4M4forU/Reading-Notes-about-Ai/assets/156566054/3832585c-7bd6-4023-9900-1404e910ec3a">

只更新θ来调优达到轻量化的目的。

在基准（backbone）的选择中，在众多的LLMs中，出于使用途径，数据安全性，和实际应用的考虑选择了LLaMA。

## 实验分析

<img width="990" alt="1 4" src="https://github.com/4M4forU/Reading-Notes-about-Ai/assets/156566054/2242c770-02fa-4220-89aa-03f4d093b67d">


三个实验问题：
1.	比起单纯的LLM和传统推荐模型，TALLRec的表现如何？
2.	TALLRec中不同部分怎么影响它的效率？
3.	在多领域推荐中TALLRec表现如何？

电影：等级大于三为“likes”，小于等于为“dislike”

书：根据5区分

基准：
1. 对于LLM模型比较，用同样的指引，在四种不同的LLM上使用上下文学习。
2. 对于传统方法，考虑六种序列模型（GRU4Rec(RNN-based),Caser(encoded by CNN),SASRec(transformer-based),DROS(state-of-the-art),GRU-BERT(variant of GRU4Rec),DROS-BERT）

评价指标：AUC（Area Under the Receiver Operating Characteristic）

实施细节：用最新的同规格序列长度的交互，优化参数，遵守超参数原有设置，后两种序列模型GRU层数为4，隐藏规格为1024。所有方法用不同种子跑五次得平均结果。

<img width="1001" alt="1 5" src="https://github.com/4M4forU/Reading-Notes-about-Ai/assets/156566054/6d3dde2a-37a4-4f81-a0b8-5a8251a626a7">


对于问题1：
1. TALLRec成功提升LLMs在推荐领域的信息和泛化能力。
2. LLMs的AUC约等于0.5（瞎猜），TALLRec训练后提升了。
3. 相比传统推荐模型，学习速度提升了。
4. 单纯添加文本说明不能提高传统模型。

对于问题2：
1. 推荐调优起核心作用
2. 羊驼调优主要提高泛化能力
3. 推荐调优样本增加。TALLRec总是比基准好。

对于问题3：

TALLRec多领域泛化能力优秀，只用电影样本在书本数据方面表现同样出色，反之亦然。

推荐调优样本超过64时，TALLRec（Both）表现最好。

相关工作：LMs、序列推荐

## 结论
LLMs的发展中，被应用到推荐领域是有极大可能性的。

然而现存的LLM模型表现并不出色，因此建立TALLRec框架来用推荐任务通过羊驼调优和推荐调优来高效调整LLM解决问题。

结果证明其有效且能够拥有良好的多领域泛化能力。后续会研究更多方法并应用到多样化的问题上。
