# PROFESSIONAL CONTEXT & CAREER JOURNEY

## Scotiabank 
**Team:** AML (Anti-Money Laundering) - AI Research & Special Projects

### Role: Machine Learning Engineer (Jul2026-Present)
* **Core Responsibility:** Mandated with the end-to-end design, optimization, and production deployment of deep learning and generative modeling pipelines to detect complex financial anomalies and establish robust vector representation frameworks.

#### Client Representation Learning (Temporal Sequence Modeling)
* **Objective:** Learn high-fidelity vector representations (client embeddings) directly from temporal transaction sequences to uncover deep behavioral similarities and temporal patterns among bank customers.
* **Architecture & Tech Stack:** 
  * Self-supervised sequence modeling (temporal sequence networks, LSTM/Transformer encoders) processing high-volume transactional data.
  * PyTorch, Python, semantic consistency validation suites.
* **Impact/Outcome:** Developed and established a robust self-supervised validation methodology measuring the semantic alignment between learned representations and known KYC attributes (such as industry sectors, and geographical presence). Successfully validated that behaviorally similar clients mapped to adjacent coordinate vectors, ensuring high-fidelity representation of financial behaviors.

### Role: Data Scientist (Jul2025-Jul2026)
* **Core Responsibility:** Owned exploratory data analysis, high-scale feature engineering, and proof-of-concept modeling for transaction monitoring, including synthetic data simulation and alert generation pipelines.

#### Anomaly Detection Models
* **Objective:** Optimize and stabilize the teams's unsupervised conditional generative anomaly detection model to learn the joint probability distribution of transaction histories conditioned on KYC features, isolating peer-group anomalies.
* **Architecture & Tech Stack:** 
  * Conditional variational autoencoder networks.
  * PyTorch, Airflow, Hyperparameter Optimization (HPO) tooling, system-level profiling and performance logging suites.
* **Impact/Outcome:** Refactored training and inference pipelines to significantly improve maintainability, computational efficiency, and numeric stability. Stabilized training loops, integrated system-level profiling, and built an HPO tool to systematically search the parameter space. Designed proxy evaluation metrics and synthetic verification datasets to overcome validation bottlenecks in delayed-feedback loops, accelerating model iteration.

#### Synthetic Data Generation
* **Objective:** Establish a high-fidelity, labeled simulation environment to safely benchmark unsupervised outlier detection pipelines and generate privacy-preserving transaction data to share methodologies across internal teams.
* **Methodology & Tech Stack:** 
  * Probabilistic generative models, synthetic transactional simulation, privacy-preserving behavioral constraints.
  * Python (Pandas, NumPy, Scikit-Learn), synthetic data benchmarking suites.
* **Impact/Outcome:** Produced high-fidelity synthetic transactional datasets replicating financial behaviors under privacy constraints, eliminating cold-start and validation bottlenecks for unsupervised models and allowing secure benchmarking across internal and research teams without compromising customer privacy.

#### Transaction Alert Submission Projects
* **Objective:** Develop, implement, and iteratively refine automated transaction monitoring pipelines targeting specific financial compliance risk typologies and client demographics.
* **Methodology & Tech Stack:** 
  * SQL-based data extraction, Feature Engineering, Outlier Modeling, decision threshold optimization.
  * SQL, Python (Pandas, Scikit-Learn), PySpark, risk-threshold tuning systems.
* **Impact/Outcome:** Engineered and deployed multiple end-to-end risk-specific alert generation pipelines. Collaborated iteratively with internal financial investigation units to refine feature definitions and decision thresholds based on operational feedback, ensuring that all generated alerts were highly actionable before deployment.

---

## Zown

### Role: Machine Learning Engineer (Feb2024-Jul2026)
* **Core Responsibility:** End-to-end ownership and development of machine learning pipelines.


### 1. Property Evaluation Pipeline
* **Objective:** Improve and maintain the existing property evaluation architecture.
* **Key Contribution:** Preserved the fundamentally sound core structure while designing and integrating a Continuous Training (CT) pipeline for automated model updates.

### 2. Image Tagging Model (In-House Computer Vision)
* **Context:** The company generated a ground-truth dataset by processing historical listing images through Azure AI Foundry APIs (extracting room types and quality scores for lighting, appliances, flooring). This dataset was manually verified by domain experts (sales team) for baseline agreement.
* **Initiative:** Proactively operationalized this capability in-house to eliminate API dependency and reduce costs.
* **Architecture & Tech Stack:** 
  * Fine-tuned a pre-trained Vision Transformer (Google ViT).
  * Employed a multi-task learning architecture.
  * Designed one classification head for room type identification.
  * Designed separate regression heads for scoring visual attributes.
* **Impact:** Seamlessly integrated the model into the live ingestion pipeline to process new listing photos. The model's outputs served as crucial downstream features for the recommender system.

### 3. Project Matching (Real Estate Recommender System)
* **Objective:** Conceptualized and built a "Tinder for homes" recommendation engine featuring a left/right swipe UI.
* **Data Collection (Implicit & Explicit Signals):** 
  * Captured binary swipe data.
  * Tracked contextual behaviors: specific photo displayed during the swipe (exterior, living room, kitchen, etc.), dwell time, and engagement depth (number of photos clicked).
* **Candidate Generation (Retrieval):** 
  * Implemented hard-filtering for rigid constraints (e.g., property type, bed/bath counts, amenities).
  * Mitigated the cold-start problem by serving users a diverse "Exploration Set" to quickly gather initial preference data.
* **Ranking Architecture:** 
  * Built a Two-Tower neural network architecture.
  * **Item Tower:** Processed non-filtered property metadata and pooled image attributes to generate item embeddings.
  * **User Tower:** Processed historical embeddings of evaluated listings concatenated with the user's explicit/implicit ratings.
  * **Scoring Mechanism:** Computed final user-item affinity scores via the dot product of user and item embeddings.
  * **Auxiliary Tasks:** Integrated a two-head auxiliary MLP to predict dwell time and engagement depth, resulting in a more expressive model and richer embeddings.
* **MLOps & Deployment:**
  * Utilized micro-batch offline training to continuously update the towers.
  * Engineered an automated validation gate to test the newly updated weights against a holdout set, ensuring no metric degradation occurred before promoting models to production.

---

## Academia

### Role: PhD Researcher
* **Core Responsibility:** Extracting thermodynamic, structural, and physical insights from computational output datasets through physical-chemical modeling, statistical machine learning, and deep learning architectures.

### 1. Data Mining Guided Investigation into Water-in-Oil Coalescence
* **Objective:** Analyze trajectory datasets from molecular dynamics simulations to investigate the coupled dynamics of asphaltene aggregation/adsorption and water-in-oil droplet coalescence modes.
* **Methodology & Tech Stack:** 
  * Spatio-temporal trajectory tracking, multi-phase molecular dynamics, physical-chemical simulation data mining.
  * Python, High-Performance Computing (HPC), Trajectory Tracking Scripts.
* **Impact/Outcome:** Developed a customized spatio-temporal tracking script to analyze droplet coalescence. Discovered a nonmonotonic trend in parallel stacking of polyaromatic asphaltene cores driven by competition between bulk self-aggregation and interfacial adsorption, demonstrating that droplet growth follows an asymmetrical nucleation-and-growth process where smaller droplets merge into the largest droplet nucleus.

### 2. Regression-Based Thermodynamic Property Extraction (Partial Molar Volume)
* **Objective:** Design and implement a statistical regression framework to calculate Partial Molar Volume (PMV) directly from molecular dynamics simulation trajectories, overcoming the limitations of traditional experimental extraction methods.
* **Methodology & Tech Stack:** 
  * Local sub-volume fluctuation analysis, Linear Regression, localized sampling techniques, structural descriptor extraction.
  * Python (Pandas, Scikit-learn, NumPy), Molecular Dynamics Simulators.
* **Impact/Outcome:** Achieved excellent agreement with experimental benchmarks, yielding a mean relative deviation of 2.49%, which localized sampling reduced to 1.18%. Applied the framework to multi-component systems, quantifying how chemical inhibitors alter solvent structures to increase solute solubility, and formulated a molecular-level description of aggregation inhibition.

### 3. Predicting Adsorption Energies with Equivariant Graph Neural Networks (eGNNs)
* **Objective:** Evaluate and optimize the transferability of pretrained Equivariant Graph Neural Networks (eGNNs) to predict adsorption dynamics using small, domain-specific Density Functional Theory (DFT) datasets.
* **Methodology & Tech Stack:** 
  * Equivariant Graph Neural Networks (eGNNs), Domain Adaptation Pipelines, Ablation Studies, Layer-Freezing, Dataset Augmentation.
  * PyTorch Geometric, PyTorch, Density Functional Theory (DFT) solvers, Python.
* **Impact/Outcome:** Established a domain adaptation pipeline demonstrating stable energy and force predictions with limited target-domain data. Isolated representation-learning dynamics across neural layers to show that retraining low-level structural feature-extractors aligns domain representations and prevents negative transfer, while topological priors from adjacent domains significantly improved model generalization for high-throughput material screening.
