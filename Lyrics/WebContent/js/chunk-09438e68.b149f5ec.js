(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-09438e68"],{"001b":function(t,e,s){"use strict";var i=s("675d"),r=s.n(i);r.a},"0ab3":function(t,e,s){"use strict";s.r(e);var i=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[t.loggedIn?s("div",[t.submitting||t.loggedInAsAdmin?s("div",[t.submitting||t.songFound?s("div",[s("form",{on:{submit:function(e){return e.preventDefault(),t.submit()}}},[s("div",{staticClass:"form-group mt-2 mb-5"},[s("fieldset",{staticClass:"border"},[t._m(0),s("div",{staticClass:"form-group mb-3"},[s("label",{attrs:{for:"title"}},[t._v("Title:")]),s("input",{directives:[{name:"model",rawName:"v-model",value:t.title,expression:"title"}],attrs:{id:"title",placeholder:"title",required:""},domProps:{value:t.title},on:{input:function(e){e.target.composing||(t.title=e.target.value)}}})]),s("div",{staticClass:"form-group mb-3"},[t._m(1),s("textarea",{directives:[{name:"model",rawName:"v-model",value:t.lyrics,expression:"lyrics"}],attrs:{id:"lyrics",placeholder:"lyrics",rows:"30",cols:"80",required:""},domProps:{value:t.lyrics},on:{input:function(e){e.target.composing||(t.lyrics=e.target.value)}}})]),s("div",{staticClass:"form-group mb-3"},[s("span",{staticClass:"mr-3"},[t._v("Language:")]),s("input",{directives:[{name:"model",rawName:"v-model",value:t.language,expression:"language"}],attrs:{type:"radio",id:"serbian",value:"Serbian"},domProps:{checked:t._q(t.language,"Serbian")},on:{change:function(e){t.language="Serbian"}}}),s("label",{attrs:{for:"serbian"}},[t._v("Serbian")]),s("input",{directives:[{name:"model",rawName:"v-model",value:t.language,expression:"language"}],attrs:{type:"radio",id:"english",value:"English"},domProps:{checked:t._q(t.language,"English")},on:{change:function(e){t.language="English"}}}),s("label",{attrs:{for:"english"}},[t._v("English")]),s("input",{directives:[{name:"model",rawName:"v-model",value:t.language,expression:"language"}],attrs:{type:"radio",id:"other",value:"Other"},domProps:{checked:t._q(t.language,"Other")},on:{change:function(e){t.language="Other"}}}),s("label",{attrs:{for:"other"}},[t._v("Other")])]),s("div",{staticClass:"form-group mb-1"},[s("label",{attrs:{for:"performer"}},[t._v("Performer:")]),s("select",{directives:[{name:"model",rawName:"v-model",value:t.performer,expression:"performer"}],attrs:{id:"performer",required:""},on:{change:function(e){var s=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){var e="_value"in t?t._value:t.value;return e}));t.performer=e.target.multiple?s:s[0]}}},[s("option",{domProps:{value:-1}},[t._v("Unknown")]),t._l(t.performers,(function(e){return s("option",{key:e.id,domProps:{value:e.id}},[t._v(t._s(e.name))])}))],2)]),s("div",{staticClass:"form-group mb-3"},[s("label",{attrs:{for:"album"}},[t._v("Album:")]),s("select",{directives:[{name:"model",rawName:"v-model",value:t.album,expression:"album"}],attrs:{id:"album",required:""},on:{change:function(e){var s=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){var e="_value"in t?t._value:t.value;return e}));t.album=e.target.multiple?s:s[0]}}},[s("option",{domProps:{value:-1}},[t._v("Unknown")]),t._l(t.albums,(function(e){return s("option",{key:e.id,domProps:{value:e.id}},[t._v(t._s(e.title))])}))],2)])])]),s("div",{staticClass:"form-group mb-5"},[s("fieldset",{staticClass:"border"},[t._m(2),s("div",{staticClass:"form-group mb-3"},[s("label",{attrs:{for:"author"}},[t._v("Select author:")]),s("select",{directives:[{name:"model",rawName:"v-model",value:t.author,expression:"author"}],on:{change:function(e){var s=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){var e="_value"in t?t._value:t.value;return e}));t.author=e.target.multiple?s:s[0]}}},t._l(t.authors,(function(e){return s("option",{key:e.id,domProps:{value:e}},[t._v(t._s(e.name))])})),0)]),s("div",{staticClass:"form-group mb-2"},[s("button",{staticClass:"btn-light",attrs:{type:"button"},on:{click:t.addMusic}},[t._v("Add author to composers")])]),s("div",{staticClass:"form-group mb-3"},[s("button",{staticClass:"btn-light",attrs:{type:"button"},on:{click:t.addLyrics}},[t._v("Add author to lyrics writers")])]),s("div",{staticClass:"row"},[s("div",{staticClass:"col"},[s("div",{staticClass:"form-group mb-4"},[t._v("Composers:")]),s("div",{staticClass:"form-group mb-3"},[s("table",{staticClass:"table table-borderless",attrs:{id:"musicTable"}},[s("tbody",t._l(t.selectedMusic,(function(e){return s("selectableRow",{key:e.id,tag:"tr"},[s("div",{attrs:{slot:"content"},slot:"content"},[t._v(t._s(e.name))])])})),1)])]),s("div",{staticClass:"form-group mb-3"},[s("button",{staticClass:"btn-secondary",attrs:{type:"button"},on:{click:function(e){return t.removeSelected("musicTable",t.selectedMusic)}}},[t._v("Remove selected composers")])])]),s("div",{staticClass:"col"},[s("div",{staticClass:"form-group mb-4"},[t._v("Lyrics writers:")]),s("div",{staticClass:"form-group mb-3"},[s("table",{staticClass:"table table-borderless",attrs:{id:"lyricsTable"}},[s("tbody",t._l(t.selectedLyrics,(function(e){return s("selectableRow",{key:e.id,tag:"tr"},[s("div",{attrs:{slot:"content"},slot:"content"},[t._v(t._s(e.name))])])})),1)])]),s("div",{staticClass:"form-group mb-3"},[s("button",{staticClass:"btn-secondary",attrs:{type:"button"},on:{click:function(e){return t.removeSelected("lyricsTable",t.selectedLyrics)}}},[t._v("Remove selected lyrics writers")])])])])])]),s("div",{staticClass:"form-group mb-3"},[s("button",{staticClass:"btn-primary",attrs:{type:"submit"}},[t._v(t._s(t.submitting?"Submit this song":"Approve of this song"))])]),s("div",{staticClass:"form-group mb-3"},[t.submitting?t._e():s("button",{staticClass:"btn-danger",attrs:{type:"button"},on:{click:function(e){return t.revert()}}},[t._v("Revert changes")])]),t.success?s("div",{staticClass:"alert alert-success"},[t._v(t._s(t.submitting?"Song successfully submitted!":"Song approved of!"))]):t._e(),t.failure?s("div",{staticClass:"alert alert-danger"},[t._v(t._s(t.submitting?"Unauthorized access! You need to log in to perform this action.":"Access denied!"))]):t._e()])]):s("div",[s("h1",[t._v("Not found")])])]):s("div",[t._v(" Access denied! ")])]):s("div",{staticClass:"jumbotron mt-2"},[t._v(" You need to log in to submit a song! ")])])},r=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"form-group mb-5"},[s("legend",[t._v("General")])])},function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"mb-1"},[s("label",{attrs:{for:"lyrics"}},[t._v("Lyrics:")])])},function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"form-group mb-5"},[s("legend",[t._v("Authors of the music and lyrics")])])}],a=s("2b0e"),o=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("tr",{class:{"table-active":t.selected},on:{click:t.toggle}},[s("td",[t._t("content")],2)])},n=[],l={name:"selectableRow",data:function(){return{selected:!1}},methods:{toggle:function(){this.selected=!this.selected}}},u=l,c=s("2877"),d=Object(c["a"])(u,o,n,!1,null,null,null),m=d.exports,h=s("3fab"),g={name:"addSong",props:{id:{default:null}},components:{selectableRow:m},data:function(){return{songToBeApproved:null,title:"",lyrics:"",language:"English",performer:-1,performers:[],album:-1,albums:[],selectedMusic:[],selectedLyrics:[],author:null,authors:[],success:!1,failure:!1,requestBase:h["a"].requestBase,songFound:!1}},computed:{loggedIn(){return this.$store.getters.loggedIn},loggedInAsAdmin(){return this.$store.getters.loggedInAsAdmin},username(){return this.$store.state.username},submitting(){return"submit"===this.$route.name}},methods:{gatherData:function(){return{title:this.title,lyrics:this.lyrics,language:this.language,performer:{id:this.performer},album:{id:this.album},uploader:{username:this.username},musicBy:this.selectedMusic,lyricsBy:this.selectedLyrics}},add:function(){a["a"].http.post(this.requestBase+"/song",this.gatherData()).then(()=>{this.success=!0,this.failure=!1},()=>{this.failure=!0,this.success=!1})},getPerformers:function(){a["a"].http.get(this.requestBase+"/performer").then(t=>{this.performers=t.body})},getAlbums:function(){a["a"].http.get(this.requestBase+"/album").then(t=>{this.albums=t.body})},getAuthors:function(){a["a"].http.get(this.requestBase+"/author").then(t=>{this.authors=t.body})},addMusic:function(){this.author&&this.addToSet(this.author,this.selectedMusic)},addLyrics:function(){this.author&&this.addToSet(this.author,this.selectedLyrics)},addToSet:function(t,e){e.some(e=>e.id===t.id)||e.push(t)},removeIfSelected(t,e){if(t.__vue__.selected){for(var s=t.firstChild.firstChild.innerHTML,i=-1,r=0;r<e.length;r++)if(e[r].name===s){i=r;break}e.splice(i,1)}},removeSelected:function(t,e){var s=document.getElementById(t),i=s.firstChild,r=i.childNodes;r.forEach(t=>this.removeIfSelected(t,e))},fillIn:function(){this.title=this.songToBeApproved.title,this.lyrics=this.songToBeApproved.lyrics,this.language=this.songToBeApproved.language,this.performer=this.songToBeApproved.performer?this.songToBeApproved.performer.id:-1,this.album=this.songToBeApproved.album?this.songToBeApproved.album.id:-1,this.selectedMusic=this.songToBeApproved.musicBy.slice(0),this.selectedLyrics=this.songToBeApproved.lyricsBy.slice(0)},editAndApprove:function(){var t=this.gatherData();t.id=this.songToBeApproved.id,a["a"].http.put(this.requestBase+"/song",t).then(()=>{a["a"].http.post(this.requestBase+"/approve/"+t.id).then(()=>{this.success=!0,this.failure=!1})}).catch(()=>{this.failure=!0,this.success=!1})},submit:function(){this.submitting?this.add():this.editAndApprove()},revert:function(){this.fillIn()},clearFields:function(){this.title="",this.lyrics="",this.language="English",this.performer=-1,this.album=-1,this.selectedMusic=[],this.selectedLyrics=[]},getSong:function(){a["a"].http.get(this.requestBase+"/song/"+this.id).then(t=>{this.songToBeApproved=t.body,this.songToBeApproved.approved||(this.songFound=!0,this.fillIn())},()=>{this.songFound=!1})},initializeFields:function(){this.submitting?this.clearFields():this.getSong()}},mounted:function(){this.getPerformers(),this.getAlbums(),this.getAuthors()},created:function(){this.initializeFields()},watch:{$route(){this.initializeFields()}}},p=g,v=(s("001b"),Object(c["a"])(p,i,r,!1,null,null,null));e["default"]=v.exports},"675d":function(t,e,s){}}]);
//# sourceMappingURL=chunk-09438e68.b149f5ec.js.map