# TTSX_MavenWeb_Project
项目名：天天生鲜

1.注册：验证用户名是否重复；(ajax)✔
        用户名是否5-20字符；(js)😊
		密码至少8-20；(js)✔
		邮箱格式要正确 且不能为空；(js+正则)✔
		如果验证没通过，则不发送注册请求(js)🤣
		密码存储密文✔
        注册成功后显示注册成功，然后跳转到登录页面。✔
		
2.登录时，添加验证码；✔
		  异步校验验证码，验证码不正确不能发送登录请求；✔
		  用户名和密码不能为空，否则不发送登录请求；✔
		  登录错误时，显示提示信息"用户名或密码错误"；✔
		  用户名和邮箱均可登录；😒
		  添加记住我功能，一周内登录自动填充用户名；(shiro)✔
		  登录成功后，显示登录成功，然后跳转首页。(ajax)✔
		  
3.首页：index.jsp😁
        显示  "欢迎您,xxx"✔
        显示商品的所有分类😂
        显示每个分类的商品，点击每个商品，进入商品详情页面🤔😂
        "查看更多"，显示对应类别的商品列表页面："list.html"😁
4.列表页面：list.html	✔	
			使用默认排序，点击价格时根据价格排序。(动态sql)😁
			点击每个商品，进入商品详情页✔
			添加分页功能(pageHelper插件)😊
			完成左边栏，新品推荐功能(商品需要记录上架时间)🤔
5.商品详情页面：detail.html✔
				完成基本信息的展示(图片，标题，描述，价格，总价，商品详情)😊
				完成增加，减少商品数量功能(总价要随之更新)👌
				点击“加入购物车”，将商品存入用户购物车(需要身份认证)(用户id、商品id、商品数量)🤔
				点击“加入购物车”，将右上角“购物车角标数字异步更新”🤔
6.购物车页面：cart.html
			  完成基本信息的展示
			  购物车删除功能
7.对于商品的查询，都通过缓存，改善查询效率
			  
8.定义后台系统
  1>完成商品的添加(基本信息，图片上传)	
  2>商品的删除
  3>商品的修改
  4>建立两种角色：user /  admin
    两种权限：product:query  product:update
	有 product:update权限的才可以堆商品进行 添加和修改
  		  
			  	  


