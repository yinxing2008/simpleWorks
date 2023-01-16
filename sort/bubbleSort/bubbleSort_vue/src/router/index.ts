import { createRouter, createWebHashHistory, RouteRecordRaw } from "vue-router";
const routes: Array<RouteRecordRaw> = [
	{
		path: "/",
		name: "home",
		component: () => import("../lblbc_sort.vue"),
	}
];
const router = createRouter({
	history: createWebHashHistory(),
	routes
});
export default router;