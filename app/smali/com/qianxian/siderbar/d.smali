.class Lcom/qianxian/siderbar/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/AppDrawer;

.field private final synthetic b:Landroid/content/SharedPreferences;

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Landroid/view/View;

.field private final synthetic e:Lcom/qianxian/siderbar/a;


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/AppDrawer;Landroid/content/SharedPreferences;Ljava/util/List;Landroid/view/View;Lcom/qianxian/siderbar/a;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/d;->a:Lcom/qianxian/siderbar/AppDrawer;

    iput-object p2, p0, Lcom/qianxian/siderbar/d;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/qianxian/siderbar/d;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/qianxian/siderbar/d;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/qianxian/siderbar/d;->e:Lcom/qianxian/siderbar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/qianxian/siderbar/d;->a:Lcom/qianxian/siderbar/AppDrawer;

    invoke-virtual {v0}, Lcom/qianxian/siderbar/AppDrawer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/qianxian/siderbar/e;

    invoke-direct {v2, p0, v0}, Lcom/qianxian/siderbar/e;-><init>(Lcom/qianxian/siderbar/d;Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/qianxian/siderbar/d;->b:Landroid/content/SharedPreferences;

    const-string v2, "apps"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianxian/siderbar/d;->d:Landroid/view/View;

    new-instance v1, Lcom/qianxian/siderbar/f;

    iget-object v2, p0, Lcom/qianxian/siderbar/d;->e:Lcom/qianxian/siderbar/a;

    iget-object v3, p0, Lcom/qianxian/siderbar/d;->d:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3}, Lcom/qianxian/siderbar/f;-><init>(Lcom/qianxian/siderbar/d;Lcom/qianxian/siderbar/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/qianxian/siderbar/d;->a:Lcom/qianxian/siderbar/AppDrawer;

    invoke-virtual {v4}, Lcom/qianxian/siderbar/AppDrawer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/qianxian/siderbar/d;->c:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
