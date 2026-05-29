---
layout: page
title: 关于我
permalink: /about/
---

<div class="about-page">
  <div class="about-header">
    <div class="about-image">
      <img src="{{ "/assets/images/profile.jpg" | relative_url }}" alt="个人照片" class="profile-photo">
    </div>
    <div class="about-intro">
      <h1>关于我</h1>
      <p class="lead">
        你好！我叫<strong>石文芝</strong>，是一名来自云南的<strong>彝族</strong>学生，热爱技术与创新。
      </p>
    </div>
  </div>
  
  <div class="about-content">
    <section class="about-section">
      <h2>我的故事</h2>
      <p>
        我是云南大学信息学院的一名学生，彝族。2026年春季学期，我参加了创新实验课程，
        学习了 Jekyll 静态网站开发技术。从第一次搭建个人博客开始，我就被静态网站的简洁与高效深深吸引。
      </p>
      <p>
        在这个实验中，我学习了如何使用 Jekyll 构建现代化的个人主页和博客系统，
        如何使用 Docker 容器化开发环境，以及如何通过 GitHub Actions 实现自动化部署。
        这些技能不仅拓宽了我的技术视野，也培养了我解决实际问题的能力。
      </p>
    </section>
    
    <section class="about-section">
      <h2>个人基本信息</h2>
      <div class="info-grid">
        <div class="info-item">
          <h3>姓名</h3>
          <p>石文芝</p>
        </div>
        <div class="info-item">
          <h3>民族</h3>
          <p>彝族</p>
        </div>
        <div class="info-item">
          <h3>学校</h3>
          <p>云南大学</p>
        </div>
        <div class="info-item">
          <h3>学院</h3>
          <p>信息学院</p>
        </div>
        <div class="info-item">
          <h3>年级</h3>
          <p>2025级</p>
        </div>
        <div class="info-item">
          <h3>课程</h3>
          <p>创新实验</p>
        </div>
      </div>
    </section>
    
    <section class="about-section">
      <h2>技术栈</h2>
      <div class="skills-grid">
        <div class="skill-category">
          <h3>前端开发</h3>
          <ul class="skill-list">
            <li>HTML5 / CSS3 / JavaScript</li>
            <li>React / Vue.js / Angular</li>
            <li>TypeScript</li>
            <li>响应式设计</li>
            <li>CSS预处理器 (Sass/Less)</li>
          </ul>
        </div>
        
        <div class="skill-category">
          <h3>后端开发</h3>
          <ul class="skill-list">
            <li>Node.js / Express</li>
            <li>Python / Django / Flask</li>
            <li>RESTful API 设计</li>
            <li>GraphQL</li>
            <li>微服务架构</li>
          </ul>
        </div>
        
        <div class="skill-category">
          <h3>数据库</h3>
          <ul class="skill-list">
            <li>MySQL / PostgreSQL</li>
            <li>MongoDB</li>
            <li>Redis</li>
            <li>数据库设计与优化</li>
          </ul>
        </div>
        
        <div class="skill-category">
          <h3>工具与平台</h3>
          <ul class="skill-list">
            <li>Git / GitHub</li>
            <li>Docker</li>
            <li>CI/CD</li>
            <li>Linux / Unix</li>
            <li>云服务 (AWS/阿里云)</li>
          </ul>
        </div>
      </div>
    </section>
    
    <section class="about-section">
      <h2>教育背景</h2>
      <div class="timeline">
        <div class="timeline-item">
          <div class="timeline-marker"></div>
          <div class="timeline-content">
            <h3>计算机科学与技术学士</h3>
            <p class="timeline-date">2018 - 2022</p>
            <p>XX大学 - 主修计算机科学，辅修软件工程</p>
          </div>
        </div>
      </div>
    </section>
    
    <section class="about-section">
      <h2>工作经历</h2>
      <div class="timeline">
        <div class="timeline-item">
          <div class="timeline-marker"></div>
          <div class="timeline-content">
            <h3>全栈开发工程师</h3>
            <p class="timeline-date">2022 - 至今</p>
            <p>XX科技有限公司</p>
            <ul>
              <li>负责公司核心产品的前端架构设计与开发</li>
              <li>参与后端API设计与优化</li>
              <li>推动团队技术栈升级，提升开发效率</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    
    <section class="about-section">
      <h2>兴趣爱好</h2>
      <div class="hobbies-grid">
        <div class="hobby-item">
          <i class="fas fa-code"></i>
          <span>开源项目</span>
        </div>
        <div class="hobby-item">
          <i class="fas fa-book"></i>
          <span>技术阅读</span>
        </div>
        <div class="hobby-item">
          <i class="fas fa-camera"></i>
          <span>摄影</span>
        </div>
        <div class="hobby-item">
          <i class="fas fa-music"></i>
          <span>音乐</span>
        </div>
      </div>
    </section>
  </div>
</div>

<style>
.about-page {
  padding: 3rem 0;
}

.about-header {
  display: grid;
  grid-template-columns: 300px 1fr;
  gap: 3rem;
  margin-bottom: 3rem;
  align-items: center;
}

@media (max-width: 768px) {
  .about-header {
    grid-template-columns: 1fr;
    text-align: center;
  }
}

.profile-photo {
  width: 250px;
  height: 250px;
  border-radius: 50%;
  object-fit: cover;
  margin: 0 auto;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.about-intro h1 {
  font-size: 2.5rem;
  margin-bottom: 1rem;
}

.lead {
  font-size: 1.25rem;
  color: #718096;
  line-height: 1.6;
}

.about-section {
  margin-bottom: 3rem;
}

.about-section h2 {
  font-size: 1.75rem;
  margin-bottom: 1.5rem;
  padding-bottom: 0.5rem;
  border-bottom: 2px solid #e2e8f0;
}

.skills-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
}

.skill-category h3 {
  font-size: 1.25rem;
  margin-bottom: 1rem;
  color: #667eea;
}

.skill-list {
  list-style: none;
  padding: 0;
}

.skill-list li {
  padding: 0.5rem 0;
  padding-left: 1.5rem;
  position: relative;
}

.skill-list li::before {
  content: "▸";
  position: absolute;
  left: 0;
  color: #667eea;
}

.timeline {
  position: relative;
  padding-left: 2rem;
}

.timeline::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 2px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

.timeline-item {
  position: relative;
  margin-bottom: 2rem;
}

.timeline-marker {
  position: absolute;
  left: -2rem;
  top: 0.5rem;
  width: 12px;
  height: 12px;
  border-radius: 50%;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border: 2px solid white;
  box-shadow: 0 0 0 2px #667eea;
}

.timeline-content {
  padding-left: 1rem;
}

.timeline-content h3 {
  font-size: 1.25rem;
  margin-bottom: 0.5rem;
}

.timeline-date {
  color: #718096;
  font-size: 0.9rem;
  margin-bottom: 0.5rem;
}

.hobbies-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 1.5rem;
}

.hobby-item {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0.5rem;
  padding: 1.5rem;
  background-color: #f7fafc;
  border-radius: 8px;
  transition: all 0.3s ease;
}

.hobby-item:hover {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  transform: translateY(-3px);
}

.hobby-item i {
  font-size: 2rem;
  color: #667eea;
}

.hobby-item:hover i {
  color: white;
}
</style>
