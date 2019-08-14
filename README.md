
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
