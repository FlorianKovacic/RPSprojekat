(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d0d9fbf"],{"6a53":function(e,s,t){"use strict";t.r(s);var r=function(){var e=this,s=e.$createElement,t=e._self._c||s;return t("div",{staticClass:"py-5"},[t("form",{on:{submit:function(s){return s.preventDefault(),e.register(s)}}},[t("div",{staticClass:"form-group mb-2"},[t("input",{directives:[{name:"model",rawName:"v-model",value:e.username,expression:"username"}],attrs:{type:"text",placeholder:"username",required:""},domProps:{value:e.username},on:{input:function(s){s.target.composing||(e.username=s.target.value)}}})]),t("div",{staticClass:"form-group mb-2"},[t("input",{directives:[{name:"model",rawName:"v-model",value:e.password,expression:"password"}],attrs:{type:"text",placeholder:"password",required:""},domProps:{value:e.password},on:{input:function(s){s.target.composing||(e.password=s.target.value)}}})]),t("div",{staticClass:"form-group mb-3"},[t("input",{directives:[{name:"model",rawName:"v-model",value:e.emailAdress,expression:"emailAdress"}],attrs:{type:"email",placeholder:"e-mail adress",required:""},domProps:{value:e.emailAdress},on:{input:function(s){s.target.composing||(e.emailAdress=s.target.value)}}})]),e._m(0),e.success?t("div",{staticClass:"alert alert-success"},[e._v("Registration successful!")]):e._e(),e.failure?t("div",{staticClass:"alert alert-danger"},[e._v("Username unfortunately taken, pick another one!")]):e._e()])])},a=[function(){var e=this,s=e.$createElement,t=e._self._c||s;return t("div",{staticClass:"form-group my-3\t"},[t("button",{attrs:{type:"submit"}},[e._v("Register")])])}],i=t("2b0e"),n=t("56d7"),u={name:"registration",data:function(){return{username:"",password:"",emailAdress:"",success:!1,failure:!1,requestBase:n["default"].requestBase}},methods:{register:function(){i["a"].http.put(this.requestBase+"/register",{username:this.username,password:this.password,emailAdress:this.emailAdress}).then(()=>{this.success=!0,this.failure=!1},()=>{this.failure=!0,this.success=!1})}}},o=u,l=t("2877"),m=Object(l["a"])(o,r,a,!1,null,null,null);s["default"]=m.exports}}]);
//# sourceMappingURL=chunk-2d0d9fbf.a9d6b954.js.map