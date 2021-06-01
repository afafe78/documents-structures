$(document).ready(function () {
  $(".bible1").hide();
  $(".bible2").hide();
  $(".bible3").hide();
  $(".bible4").hide();
  $(".bible5").hide();

  /******** The Beginning *********/
  $(".btn-default.one").click(function (e) {
    $(".bible1").show();
    $(".pic").hide();
    $("#titleOne").show();
    $("#titleTwo").hide();
    $("#titleThree").hide();
    $("#titleFour").hide();
    $("#titleFive").hide();
    e.preventDefault();
  });

  $(".btn-default.oneOne").click(function (e) {
    $(".bible1").hide();
    $(".pic").show();
    $("#titleOne").show();
    $("#titleTwo").show();
    $("#titleThree").show();
    $("#titleFour").show();
    $("#titleFive").show();
    e.preventDefault();
  });

  /******** Adam and Eve *********/
  $(".btn-default.two").click(function (e) {
    $(".bible2").show();
    $(".pic").hide();
    $("#titleOne").hide();
    $("#titleTwo").show();
    $("#titleThree").hide();
    $("#titleFour").hide();
    $("#titleFive").hide();
    e.preventDefault();
  });

  $(".btn-default.twoOne").click(function (e) {
    $(".bible2").hide();
    $(".pic").show();
    $("#titleOne").show();
    $("#titleTwo").show();
    $("#titleThree").show();
    $("#titleFour").show();
    $("#titleFive").show();
    e.preventDefault();
  });

  /******** The fall *********/
  $(".btn-default.three").click(function (e) {
    $(".bible3").show();
    $(".pic").hide();
    $("#titleOne").hide();
    $("#titleTwo").hide();
    $("#titleThree").show();
    $("#titleFour").hide();
    $("#titleFive").hide();
    e.preventDefault();
  });

  $(".btn-default.threeOne").click(function (e) {
    $(".bible3").hide();
    $(".pic").show();
    $("#titleOne").show();
    $("#titleTwo").show();
    $("#titleThree").show();
    $("#titleFour").show();
    $("#titleFive").show();
    e.preventDefault();
  });

  /******** Cain and Abel *********/
  $(".btn-default.four").click(function (e) {
    $(".bible4").show();
    $(".pic").hide();
    $("#titleOne").hide();
    $("#titleTwo").hide();
    $("#titleThree").hide();
    $("#titleFour").show();
    $("#titleFive").hide();
    e.preventDefault();
  });

  $(".btn-default.fourOne").click(function (e) {
    $(".bible4").hide();
    $(".pic").show();
    $("#titleOne").show();
    $("#titleTwo").show();
    $("#titleThree").show();
    $("#titleFour").show();
    $("#titleFive").show();
    e.preventDefault();
  });

  /******** From Adam to Noah *********/
  $(".btn-default.five").click(function (e) {
    $(".bible5").show();
    $(".pic").hide();
    $("#titleOne").hide();
    $("#titleTwo").hide();
    $("#titleThree").hide();
    $("#titleFour").hide();
    $("#titleFive").show();
    e.preventDefault();
  });

  $(".btn-default.fiveOne").click(function (e) {
    $(".bible5").hide();
    $(".pic").show();
    $("#titleOne").show();
    $("#titleTwo").show();
    $("#titleThree").show();
    $("#titleFour").show();
    $("#titleFive").show();
    e.preventDefault();
  });
});
