.class Lcom/qianxian/sidebar/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/av;

.field private final synthetic b:Landroid/content/pm/ResolveInfo;

.field private final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/qianxian/sidebar/av;Landroid/content/pm/ResolveInfo;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/ba;->a:Lcom/qianxian/sidebar/av;

    iput-object p2, p0, Lcom/qianxian/sidebar/ba;->b:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/qianxian/sidebar/ba;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qianxian/sidebar/ba;->a:Lcom/qianxian/sidebar/av;

    invoke-static {v2}, Lcom/qianxian/sidebar/av;->a(Lcom/qianxian/sidebar/av;)Lcom/qianxian/sidebar/Sidebar;

    move-result-object v2

    invoke-static {v2}, Lcom/qianxian/sidebar/Sidebar;->a(Lcom/qianxian/sidebar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "lock"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/qianxian/sidebar/ba;->a:Lcom/qianxian/sidebar/av;

    invoke-static {v1}, Lcom/qianxian/sidebar/av;->a(Lcom/qianxian/sidebar/av;)Lcom/qianxian/sidebar/Sidebar;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qianxian/sidebar/Sidebar;->b(Lcom/qianxian/sidebar/Sidebar;Z)V

    iget-object v1, p0, Lcom/qianxian/sidebar/ba;->a:Lcom/qianxian/sidebar/av;

    invoke-static {v1}, Lcom/qianxian/sidebar/av;->a(Lcom/qianxian/sidebar/av;)Lcom/qianxian/sidebar/Sidebar;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianxian/sidebar/ba;->b:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qianxian/sidebar/ba;->b:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianxian/sidebar/ba;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/qianxian/sidebar/Sidebar;->a(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
