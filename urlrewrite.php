<?php
$arUrlRewrite=array (
  0 => 
  array (
    'CONDITION' => '#^/interesting/(.+)#',
    'RULE' => 'CODE=$1',
    'ID' => 'bitrix:news.detail',
    'PATH' => '/interesting/detail.php',
    'SORT' => 100,
  ),
  1 => 
  array (
    'CONDITION' => '#^/excursion/(.+)#',
    'RULE' => 'CODE=$1',
    'ID' => 'bitrix:news',
    'PATH' => '/excursion/detail.php',
    'SORT' => 100,
  ),
  2 => 
  array (
    'CONDITION' => '#^/advices/(.+)#',
    'RULE' => 'CODE=$1',
    'ID' => 'bitrix:news.detail',
    'PATH' => '/advices/detail.php',
    'SORT' => 100,
  ),
  3 => 
  array (
    'CONDITION' => '#^/photos/#',
    'RULE' => '',
    'ID' => 'bitrix:catalog',
    'PATH' => '/photos/index.php',
    'SORT' => 100,
  ),
  4 => 
  array (
    'CONDITION' => '#^/promo/#',
    'RULE' => '',
    'ID' => 'bitrix:news',
    'PATH' => '/promo/index.php',
    'SORT' => 100,
  ),
  5 => 
  array (
    'CONDITION' => '#^/news/#',
    'RULE' => '',
    'ID' => 'bitrix:news',
    'PATH' => '/news/index.php',
    'SORT' => 100,
  ),
);
