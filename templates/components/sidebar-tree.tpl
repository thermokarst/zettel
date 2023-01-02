<!-- Variable bindings for this tree-->
<node:active>
  <bind tag="link-class">font-bold text-${theme}-600 hover:underline</bind>
  <else />
  <tree:open>
    <has-children>
      <bind tag="link-class">font-bold hover:underline</bind>
      <else />
      <bind tag="link-class">hover:underline</bind>
    </has-children>
    <else />
    <bind tag="link-class">hover:underline</bind>
  </tree:open>
</node:active>

<!-- Rendering of this tree -->
<div class="pl-2">
  <!-- Node's rootLabel-->
  <div class="flex items-center my-2 space-x-2 justify-left">
    <a class="${link-class} truncate" title="${node:text}" href="${node:url}">
      <node:text />
    </a>
    <tree:open>
      <else />
      <node:terminal>
        <else />
        <span class="text-gray-300" title="${tree:childrenCount} children inside">
          <tree:childrenCount />
        </span>
      </node:terminal>
    </tree:open>
  </div>

  <tree:open>
    <children>
      <apply template="sidebar-tree" />
    </children>
  </tree:open>
</div>
