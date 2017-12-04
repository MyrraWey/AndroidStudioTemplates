package ${packageName}

import com.develop.zuzik.redux.core.store.Action

sealed class ${className}Action : Action {
<#if addStub>
	class LoadData : ${className}Action()
</#if>
}