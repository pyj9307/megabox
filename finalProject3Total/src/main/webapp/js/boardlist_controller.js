'use strict';

 

App.controller('BoardlistController', ['$scope', 'BoardlistService',

      function($scope, BoardlistService) {

          var self = this;

          self.boardlist={id:null, name:'',passwd:'',title:'',content:''};

          self.page=[];

              

          //리스트 보기

          self.list = function(curPage){

              BoardlistService.list(curPage)

              .then(

                 function(data) {

                     self.page = data;

                     console.log("[controller:list]", self.page);

                     //alert("목록보기 성공!");

                 },

                 function(errResponse){

                     console.error('Error while fetching page...');

                 }

              );

          };  

         

          //글 입력

          self.create = function(boardlist) {

              BoardlistService.create(boardlist)

              .then(

                  function() {

                    alert("Save OK!");

                    self.list(0);

                  },

                  function(errResponse){

                     console.error('Error while creating Article.');

                  }

               );   

           };

       
          self.list(0);

          //글 수정


           self.update = function(boardlist, id){

               BoardService.update(boardlist, id)

                       .then(

                                         function() {

                                       alert("Update OK!");

                                       self.list(self.page.number);  //현재 페이지 리로드

                               },

                               function(errResponse){

                                    console.error('Error while updating User.');

                               }

                   );

           };







          // ADD or UPDATE 버튼 클릭

          self.submit = function() {

              if(self.boardlist.id===null){                     

                  self.create(self.boardlist);         

                  console.log("[controller:create]", self.boardlist);

              }else{

                  self.update(self.boardlist, self.boardlist.id);

                  console.log('Article updated with id ', self.boardlist.id);

              }

              self.reset();             

          };  

         

          //글조회

          self.edit = function(id){


              console.log('[controller:edit]', id);

              console.log("3333", self.page);

              for(var i = 0; i < self.page.content.length; i++){

                  if(self.page.content[i].id === id) {

                     self.boardlist = angular.copy(self.page.content[i]);

                     console.log("[read article]", self.boardlist);

                     break;

                  }

              }

          }; 

         
//글 삭제

           self.delete = function(id){

               BoardlistService.delete(id)

                       .then(

                               function() {

                                        alert("Delete OK!");

                                        self.list(self.page.number);  //현재 페이지 리로드

                               },

                               function(errResponse){

                                    console.error('삭제실패.');

                               }

                   );

           };
          //글 삭제

          self.remove = function(id){

          if (confirm('삭제하시겠습니까?')) {
	 BoardlistService.delete(id)
 console.log('controller service call later');
                      //console.log('[controller:remove]', id);

                  //글입력(수정)화면 CLEAR

                  if(self.boardlist.id === id) { 

                     self.reset();

                  }

                  self.delete(id);

                    } else {

                        return;

                    }             

          };

         

          self.reset = function(){

          self.boardlist={id:null, name:'',passwd:'',title:'',content:''};

              $scope.myForm.$setPristine(); //reset Form

          };

         

}]);