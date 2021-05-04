(function () {
    'use strict';

    angular
        .module('app')
        .controller('produce', produce);

    produce.$inject = ['$location'];

    function produce($location) {
        /* jshint validthis:true */
        var vm = this;
        vm.title = 'produce';

        activate();

        function activate() { }
    }
})();
document.getElementById('6').classList.add('openNav');
localStorage.setItem('testClass', document.getElementById('6').getAttribute('class'));