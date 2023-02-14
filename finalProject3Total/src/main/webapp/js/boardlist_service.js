'use strict';



App.factory('BoardlistService', ['$http', '$q', function($http, $q) {



	return {



		list: function(curPage) {

			return $http.get('http://localhost:80/boardlist/' + curPage)

				.then(

					function(response) {

						console.log("[service:list]server call  suceeded.");

						return response.data;

					},

					function(errResponse) {

						console.error('Error while fetching contents');

						return $q.reject(errResponse);

					}

				);

		},

		create: function(boardlist) {

			return $http.post('http://localhost:80/boardlist/', boardlist)

				.then(

					function(response) {

						console.log("[service:create]server call  suceeded.");

						return response.data;

					},

					function(errResponse) {

						console.error('Error while creating article');

						return $q.reject(errResponse);

					}

				);

		},

		delete: function(id) {

			return $http.delete('http://localhost:80/boardlist/delete/' + id)

				.then(

					function(response) {

						return response.data;

					},

					function(errResponse) {

						console.error('Error while deleting article');

						return $q.reject(errResponse);

					}

				);

		},
		update: function(boardlist, id) {

			return $http.put('http://localhost:80/boardlist/' + id, boardlist)

				.then(

					function(response) {

						return response.data;

					},

					function(errResponse) {

						console.error('Error while updating boardlist');

						return $q.reject(errResponse);

					}

				);

		}
	};

}]);