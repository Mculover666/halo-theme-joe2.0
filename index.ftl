<!DOCTYPE html>
<html lang="zh-CN">
  <#import "template/common/header.ftl" as headInfo>
  <@headInfo.head title="首页" type="index"/>
  <#import "template/macro/tail.ftl" as tailInfo>
  <body>
    <div id="Joe">
      <#include "template/common/navbar.ftl">
      <div class="joe_container joe_main_container page-index${settings.enable_show_in_up?then(' animated showInUp','')}${(settings.aside_position=='left')?then(' revert','')}">
        <div class="joe_main">
          <div class="joe_index">
            <#if settings.enable_banner!true>
              <#import "template/macro/banner.ftl" as h_banner>
              <@h_banner.banner />
            </#if>
            <#if settings.enable_hot_category!true>
              <#import "template/macro/hot_category.ftl" as hp>
              <@hp.hot_category />
            </#if>
          </div>
        </div>
        <#include "template/common/aside.ftl">
      </div>
      <#include "template/common/actions.ftl">
      <#include "template/common/footer.ftl">
    </div>
    <@tailInfo.tail type="index"/> 
  </body>
</html>