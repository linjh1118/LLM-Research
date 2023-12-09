# LLM Research
### 1. 相关仓库传送门
-  [Awesome-LLM](https://github.com/Hannibal046/Awesome-LLM)仓库由[Xin Cheng](https://github.com/Hannibal046)等人创建，其中汇总了LLM中各方向的高质量论文，同时也包含针对LLM训练，部署应用，入门博客教程等各种资料的地址。
-  [ICL_PaperList](https://github.com/dqxiu/ICL_PaperList)仓库由[Qingxiu Dong](https://github.com/dqxiu/ICL_PaperList)等人创建，其中汇总了LLM子方向ICL的高质量论文，同时也孵化出了一篇优秀的综述。
- [邹雨衡](https://github.com/logan-zou),  [长琴](https://yam.gift/),  [玉琳](https://github.com/Sophia-Huang)和众多datawhale开源贡献者一起创作了[datawhalechina/prompt-engineering-for-developers](https://github.com/datawhalechina/prompt-engineering-for-developers)，详实地介绍了prompt engineering，如何用chatgpt和langchain搭建LLM应用，如何使用 Gradio 搭建生成式 AI 应用等内容。
- [邹雨衡](https://github.com/logan-zou)的[动手写LLM应用开发](logan-zou/Tutorial_for_developing_LLM_application)是一个面向小白开发者的大模型应用开发教程，旨在结合个人知识库助手项目，通过一个课程完成大模型开发的重点入门。此教程不仅包含了很多LLM开发的实战知识，其对LLM各方面基础知识也进行全面介绍。此教程目前即将编写完毕，非常让人期待。
- [长琴](https://yam.gift/) 等人的[datawhalechina/hugging-llm](https://github.com/datawhalechina/hugging-llm)详细地介绍了ChatGPT原理、使用和应用。读者学习了之后，即可熟练地编写相应代码来调用openai的api进而完成NLP各种下游任务。
- [陈安东](https://github.com/andongBlue)和[张帆](https://github.com/zhangfanTJU)的[datawhalechina/so-large-lm](https://github.com/datawhalechina/so-large-l)对大模型做出了一个详细的综述，介绍了大模型的技术内容(数据准备、模型构建、训练策略到模型评估与改进等方面)，也介绍了大模型的伦理内容(安全、隐私、环境和法律道德等方面)。

# 项目简介
LLM research的主要目标是给打算跟踪LLM学术前沿的研究人员提供支持。
我们小组将于近期三四个月撰写好相应文章的精读笔记。

<img src="./images/readme1.png" alt="image-20231130085512212" width="300" />


# 经典论文列表

## Ch1. Parameter-Efficient Fine-Tuning
目前还没有一个仓库有系统地整理“parameter-efficient-finetuning”领域论文。所以本仓库优先整理了这方面的论文。力求覆盖peft库中的基础微调方式。

### 1. Low Rank Decomposition Method

| Title                                                        | Date    | Publication | citation | Summary | Notes |      |
| ------------------------------------------------------------ | ------- | ----------- | -------- | ------- | ----- | ---- |
| [LoRA: Low-Rank Adaptation of Large Language Models](https://arxiv.org/pdf/2106.09685.pdf) | 2021-10 | arXiv       |          |         |       |[Lora_series_notes](Lora/Lora_series.md)|
| [Adaptive Budget Allocation for Parameter-Efficient Fine-Tuning (AdaLoRA)](https://arxiv.org/pdf/2303.10512.pdf) | 2023-02 | ICLR        |          |         |       |      |
| [QLoRA: Efficient Finetuning of Quantized LLMs](https://arxiv.org/pdf/2305.14314.pdf) | 2023-05 | arxiv       |          |         |       |      |
| [LongLoRA: Efficient Fine-tuning of Long-Context Large Language Models](https://arxiv.org/abs/2309.12307) | 2023-09 | arxiv       |          |         |       |      |
|                                                              |         |             |          |         |       |      |



### 2. Adapter Method

| Title                                                        | Date    | Publication | citation | Summary | Notes |      |
| ------------------------------------------------------------ | ------- | ----------- | -------- | ------- | ----- | ---- |
| [Parameter-Efficient Transfer Learning for NLP (Prefix-Tuning)](http://proceedings.mlr.press/v97/houlsby19a.html) | 2019-06 | ICML        |          |         |       |      |
| [AdapterHub: A Framework for Adapting Transformers](https://arxiv.org/abs/2007.07779) | 2020-07 | EMNLP       |          |         |       |      |
|                                                              |         |             |          |         |       |      |

### 3. Continuous-Prompt Learning Method

| Title                                                        | Date    | Publication | citation | Summary | Notes |      |
| ------------------------------------------------------------ | ------- | ----------- | -------- | ------- | ----- | ---- |
| [Prefix-Tuning: Optimizing Continuous Prompts for Generation](https://arxiv.org/abs/2101.00190) | 2021-08 | ACL         |          |         |       |      |
| [GPT Understands, Too (P-Tuning)](https://arxiv.org/abs/2103.10385) | 2021-03 | AI Open     |          |         |       |      |
| [The Power of Scale for Parameter-Efficient Prompt Tuning (Prompt-Tuning)](https://arxiv.org/abs/2104.08691) | 2021-04 | EMNLP       |          |         |       |      |
| [P-Tuning v2: Prompt Tuning Can Be Comparable to Fine-tuning Universally Across Scales and Tasks](https://arxiv.org/abs/2110.07602) | 2021-10 | ACL         |          |         |       |      |
| [Late Prompt Tuning: A Late Prompt Could Be Better Than Many Prompts](https://arxiv.org/abs/2210.11292) | 2022-10 | EMNLP       |          |         |       |      |
| [Black-Box Tuning for Language-Model-as-a-Service](https://www.semanticscholar.org/paper/002c58077a1f1b296468b117230a1199e91f35c2) | 2022-06 | ICLR        |          |         |       |      |

### 4. Mixed Method

| Title                                                        | Date     | Publication      | citation | Summary | Notes |      |
| ------------------------------------------------------------ | -------- | ---------------- | -------- | ------- | ----- | ---- |
| [UniPELT: A Unified Framework for Parameter-Efficient Language Model Tuning](https://arxiv.org/abs/2110.07577) | 2022-05  | ACL              |          |         |       |      |
| [Towards a Unified View of Parameter-Efficient Transfer Learning](https://arxiv.org/abs/2110.04366) | 2022 -02 | ICLR (spotlight) |          |         |       |      |
|                                                              |          |                  |          |         |       |      |



## Ch2. Full Parameter Fine-Tuning

### 1. LOMO-series
| Title                                                        | Date    | Publication | citation | Summary | Notes |      |
| ------------------------------------------------------------ | ------- | ----------- | -------- | ------- | ----- | ---- |
| [Full Parameter Fine-tuning for Large Language Models with Limited Resources](https://arxiv.org/abs/2306.09782) | 2023-06 | arXiv       |          |         |       |      |
| [AdaLomo: Low-memory Optimization with Adaptive Learning Rate](https://arxiv.org/abs/2310.10195) |         | arXiv       |          |         |       |      |
|                                                              |         |             |          |         |       |      |

## Ch3. In-Context-Learning

| Title                                                        | Date | Publication | citation | Summary | Notes |      |
| ------------------------------------------------------------ | ---- | ----------- | -------- | ------- | ----- | ---- |
| [Chain of Thought Prompting Elicits Reasoning in Large Language Models](https://www.semanticscholar.org/paper/1b6e810ce0afd0dd093f789d2b2742d047e316d5) |      | Nips2022    | 2141     |         |       |      |
| [Challenging BIG-Bench Tasks and Whether Chain-of-Thought Can Solve Them](https://www.semanticscholar.org/paper/663a41c866d49ce052801fbc88947d39764cad29) |      | ACL2022     |          |         |       |      |
| [Automatic Chain of Thought Prompting in Large Language Models](https://www.semanticscholar.org/paper/90350aa626bed47b02d0c162462e5b0ca82be6b2) |      | ICLR2022    |          |         |       |      |
| [Multimodal Chain-of-Thought Reasoning in Language Models](https://www.semanticscholar.org/paper/780a7f5e8ba9b4b451e3dfee1bcfb0f68aba5050) |      |             |          |         |       |      |
|                                                              |      |             |          |         |       |      |

## Ch4. Prompt Engineering
| Title                                                        | Date    | Publication           | citation | Summary | Notes |      |
| ------------------------------------------------------------ | ------- | --------------------- | -------- | ------- | ----- | ---- |
| [Exploring Lottery Prompts for Pre-trained Language Models](https://www.semanticscholar.org/paper/a23d45f22e10173c58a5ee25e5b6c815829671d5) | 2023-05 | ACL                   |          |         |       |      |
| [Pre-train, Prompt, and Predict: A Systematic Survey of Prompting Methods in Natural Language Processing](https://www.semanticscholar.org/paper/28692beece311a90f5fa1ca2ec9d0c2ce293d069) | 2021-07 | ACM Computing Surveys | **1640** |         |       |      |
|                                                              |         |                       |          |         |       | 、   |

## Ch5. LLM-based Agent
| Title                                                        | Date    | Publication | citation | Summary | Notes |      |
| ------------------------------------------------------------ | ------- | ----------- | -------- | ------- | ----- | ---- |
| [The Rise and Potential of Large Language Model Based Agents: A Survey](https://www.semanticscholar.org/paper/0c72450890a54b68d63baa99376131fda8f06cf9) | 2023-09 | arxiv       |          |         |       |      |
| [CAMEL: Communicative Agents for "Mind" Exploration of Large Scale Language Model Society](https://www.semanticscholar.org/paper/7ca954844bc1dd405bc43445b1c990e42d865095) |         |             |          |         |       |      |
| [Reflexion: Language Agents with Verbal Reinforcement Learning](https://www.semanticscholar.org/paper/0671fd553dd670a4e820553a974bc48040ba0819) | 2023-06 | arxiv       | **1640** |         |       |      |
| Generative Agents: Interactive Simulacra of Human Behavior   | 2023-08 | arxiv       |          |         |       |      |
| Exploring Large Language Models for Communication Games: An Empirical Study on Werewolf | 2023-09 | arxiv       |          |         |       |      |
| [Describe, Explain, Plan and Select: Interactive Planning with Large Language Models Enables Open-World Multi-Task Agents](https://www.semanticscholar.org/paper/0935ce0adad57e1b24c50d793d46a407c3f563f3) |         |             |          |         |       |      |
| [ToolLLM: Facilitating Large Language Models to Master 16000+ Real-world APIs](https://www.semanticscholar.org/paper/0bfc804e31eecfd77f45e4ee7f4d629fffdcd628) |         |             |          |         |       |      |
| [AgentBench: Evaluating LLMs as Agents](https://www.semanticscholar.org/paper/5dbf93a68b7fda600521f046dea35ea8ba9e884f) |         |             |          |         |       |      |
| [Language Models can Solve Computer Tasks](https://www.semanticscholar.org/paper/9a75e23639bfcc3a51da57a3b682a984d1d8ac0b) |         |             |          |         |       |      |
| [ChatEval: Towards Better LLM-based Evaluators through Multi-Agent Debate](https://www.semanticscholar.org/paper/ec58a564fdda29e6a9a0a7bab5eeb4c290f716d7) |         |             |          |         |       |      |
| [Improving Factuality and Reasoning in Language Models through Multiagent Debate](https://www.semanticscholar.org/paper/4780d0a027c5c5a8e01d7cf697f6296880ffc945) |         |             |          |         |       |      |
| [Self-collaboration Code Generation via ChatGPT](https://www.semanticscholar.org/paper/ba2f935d2578fbf77ec1aa79e26e3db396771e38) |         |             |          |         |       |      |





## Ch6. LLM for NLP downstream Tasks

| Title                                                        | Date    | Publication | citation | Summary | Notes |      |
| ------------------------------------------------------------ | ------- | ----------- | -------- | ------- | ----- | ---- |
| [Revisiting Relation Extraction in the era of Large Language Models](https://arxiv.org/pdf/2305.05003.pdf) | 2023-05 | ACL         |          |         |       |      |
|                                                              |         |             |          |         |       |      |
|                                                              |         |             |          |         |       |      |


## Ch7. LLM for Graph Learning

| Title                                                        | Date    | Publication | citation | Summary | Notes |      |
| ------------------------------------------------------------ | ------- | ----------- | -------- | ------- | ----- | ---- |
| [G-Adapter: Towards Structure-Aware Parameter-Efficient Transfer Learning for Graph Transformer Networks](https://arxiv.org/abs/2305.10329) | 2023-05 | arXiv       |          |         |       |      |
|                                                              |         |             |          |         |       |      |
|                                                              |         |             |          |         |       |      |


## Ch8. LLM with Knowledge Graph

| Title                                                        | Date    | Publication | citation | Summary | Notes |      |
| ------------------------------------------------------------ | ------- | ----------- | -------- | ------- | ----- | ---- |
| [Making Large Language Models Perform Better in Knowledge Graph Completion (KoPA from ZJU)](https://arxiv.org/abs/2310.06671) | 2023-10 | arXiv       |          |         |       |      |
|                                                              |         |             |          |         |       |      |
|                                                              |         |             |          |         |       |      |



# At last

**核心贡献者**

- [林景豪-项目负责人&核心内容创作者](https://github.com/linjh1118)（东北大学研究生）
- [王淏-项目负责人&核心内容创作者](https://github.com/Charon-ops)（协和医学院医工所研究生）
- [余绍缘 核心内容创作者](https://github.com/shaoyuanyu)
- [袁鑫喆 核心内容创作者](https://github.com)
- [胡锦琛 核心内容创作者](https://github.com)
- 吉林大学 车浩源，李昊天，段云娜老师们 核心内容创作者&审核者
- 东北大学 张富，程经纬老师们 核心内容创作者&审核者

**核心审查者**

1. 非常感谢导师们xxx 仔细审查了本仓库的所有笔记内容，
   感谢他们的大力支持，同时也感谢xxx的伙伴们的大力支持

2. 非常感谢datawhale组织的好大哥好大姐 **谢文睿**，**范晶晶**等对本项目的全程支持。



**联系方式**

If you have any questions, do not hesitate to contact me [linjh1118@mails.jlu.edu.cn](mailto:linjh1118@mails.jlu.edu.cn).

