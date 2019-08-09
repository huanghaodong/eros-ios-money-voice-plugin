
**集成方式**

## 安装 
====================================

1. 打开iOS目录`工程目录/platforms/ios/WeexEros`，编辑Podfile文件，增加以下代码；

```
 pod 'HHDMoneyVoice', :git => 'https://github.com/huanghaodong/eros-ios-money-voice-plugin.git', :tag => '0.0.3'
```

2. 到此目录下执行 `pod update`




## 使用

* 引用Module

	```js
	const Voice = weex.requireModule('voice');
	```
	
* api
##### 参数说明

| name | type | required | Description |
| ------ | ------ | ------ | ------ |
| money | String | true | 金额 |
| payType | String | true | 收款商,'alipay,wxpay,fdpay' |




	```js
  	Voice.play({
        money: '5.2',
        payType: 'wxpay'
      })
  ```

```
## 更新日志

## 如果觉得有用，请给个start，谢谢
