---
layout: page
title: 联系我
permalink: /contact/
---

<div class="contact-page">
  <div class="contact-intro">
    <h1>联系我</h1>
    <p class="lead">
      有项目想要合作？或者只是想打个招呼？我很乐意收到你的消息！
    </p>
  </div>
  
  <div class="contact-content">
    <div class="contact-info">
      <h2>联系方式</h2>
      
      <div class="contact-methods">
        <div class="contact-method">
          <div class="method-icon">
            <i class="fas fa-envelope"></i>
          </div>
          <div class="method-details">
            <h3>电子邮件</h3>
            <a href="mailto:{{ site.email }}">{{ site.email }}</a>
          </div>
        </div>
        
        <div class="contact-method">
          <div class="method-icon">
            <i class="fab fa-github"></i>
          </div>
          <div class="method-details">
            <h3>GitHub</h3>
            <a href="https://github.com/{{ site.github_username }}" target="_blank">
              @{{ site.github_username }}
            </a>
          </div>
        </div>
        
        <div class="contact-method">
          <div class="method-icon">
            <i class="fab fa-linkedin"></i>
          </div>
          <div class="method-details">
            <h3>LinkedIn</h3>
            <a href="https://linkedin.com/in/{{ site.linkedin_username }}" target="_blank">
              {{ site.linkedin_username }}
            </a>
          </div>
        </div>
        
        <div class="contact-method">
          <div class="method-icon">
            <i class="fab fa-twitter"></i>
          </div>
          <div class="method-details">
            <h3>Twitter</h3>
            <a href="https://twitter.com/{{ site.twitter_username }}" target="_blank">
              @{{ site.twitter_username }}
            </a>
          </div>
        </div>
      </div>
      
      <div class="availability">
        <h3>当前状态</h3>
        <div class="status-indicator">
          <span class="status-dot available"></span>
          <span>开放新机会和合作</span>
        </div>
      </div>
    </div>
    
    <div class="contact-form-wrapper">
      <h2>发送消息</h2>
      <form class="contact-form" action="https://formspree.io/f/your-form-id" method="POST">
        <div class="form-group">
          <label for="name">姓名 *</label>
          <input type="text" id="name" name="name" required placeholder="请输入您的姓名">
        </div>
        
        <div class="form-group">
          <label for="email">电子邮件 *</label>
          <input type="email" id="email" name="email" required placeholder="请输入您的邮箱">
        </div>
        
        <div class="form-group">
          <label for="subject">主题</label>
          <input type="text" id="subject" name="subject" placeholder="消息主题">
        </div>
        
        <div class="form-group">
          <label for="message">消息内容 *</label>
          <textarea id="message" name="message" rows="6" required placeholder="请输入您的消息..."></textarea>
        </div>
        
        <button type="submit" class="btn btn-primary btn-large">
          <i class="fas fa-paper-plane"></i> 发送消息
        </button>
      </form>
    </div>
  </div>
  
  <div class="faq-section">
    <h2>常见问题</h2>
    
    <div class="faq-list">
      <div class="faq-item">
        <h3>你接受自由职业项目吗？</h3>
        <p>是的，我对有趣的项目持开放态度。请通过上面的表单或电子邮件联系我，详细说明您的项目需求。</p>
      </div>
      
      <div class="faq-item">
        <h3>回复时间需要多久？</h3>
        <p>我通常会在24-48小时内回复邮件。如果是紧急事项，请在主题中注明。</p>
      </div>
      
      <div class="faq-item">
        <h3>可以技术交流吗？</h3>
        <p>当然可以！我非常乐意与其他开发者交流技术问题。欢迎通过任何渠道联系我。</p>
      </div>
    </div>
  </div>
</div>

<style>
.contact-page {
  padding: 3rem 0;
}

.contact-intro {
  text-align: center;
  margin-bottom: 3rem;
}

.contact-intro h1 {
  font-size: 2.5rem;
  margin-bottom: 1rem;
}

.lead {
  font-size: 1.25rem;
  color: #718096;
  max-width: 600px;
  margin: 0 auto;
}

.contact-content {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  margin-bottom: 4rem;
}

@media (max-width: 768px) {
  .contact-content {
    grid-template-columns: 1fr;
    gap: 3rem;
  }
}

.contact-info h2,
.contact-form-wrapper h2 {
  font-size: 1.75rem;
  margin-bottom: 1.5rem;
}

.contact-methods {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.contact-method {
  display: flex;
  align-items: center;
  gap: 1rem;
  padding: 1rem;
  background-color: #f7fafc;
  border-radius: 8px;
  transition: all 0.3s ease;
}

.contact-method:hover {
  background-color: #edf2f7;
  transform: translateX(5px);
}

.method-icon {
  width: 50px;
  height: 50px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  font-size: 1.25rem;
}

.method-details h3 {
  font-size: 1rem;
  margin-bottom: 0.25rem;
}

.method-details a {
  color: #667eea;
  font-size: 0.9rem;
}

.availability {
  padding: 1.5rem;
  background: linear-gradient(135deg, rgba(102, 126, 234, 0.1) 0%, rgba(118, 75, 162, 0.1) 100%);
  border-radius: 8px;
}

.availability h3 {
  font-size: 1rem;
  margin-bottom: 0.75rem;
}

.status-indicator {
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.status-dot {
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background-color: #48bb78;
  animation: pulse 2s infinite;
}

@keyframes pulse {
  0%, 100% {
    opacity: 1;
  }
  50% {
    opacity: 0.5;
  }
}

.contact-form {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.form-group {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
}

.form-group label {
  font-weight: 500;
  color: #2d3748;
}

.form-group input,
.form-group textarea {
  padding: 0.75rem 1rem;
  border: 2px solid #e2e8f0;
  border-radius: 8px;
  font-family: inherit;
  font-size: 1rem;
  transition: all 0.3s ease;
}

.form-group input:focus,
.form-group textarea:focus {
  outline: none;
  border-color: #667eea;
  box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
}

.form-group textarea {
  resize: vertical;
  min-height: 120px;
}

.faq-section {
  max-width: 800px;
  margin: 0 auto;
}

.faq-section h2 {
  font-size: 1.75rem;
  margin-bottom: 2rem;
  text-align: center;
}

.faq-list {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.faq-item {
  padding: 1.5rem;
  background-color: #f7fafc;
  border-radius: 8px;
  border-left: 4px solid #667eea;
}

.faq-item h3 {
  font-size: 1.1rem;
  margin-bottom: 0.75rem;
  color: #2d3748;
}

.faq-item p {
  color: #718096;
  margin-bottom: 0;
  line-height: 1.6;
}
</style>
