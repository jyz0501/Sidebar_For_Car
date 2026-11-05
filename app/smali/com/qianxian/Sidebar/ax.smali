.class Lcom/qianxian/Sidebar/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/aw;

.field private final synthetic b:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/aw;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/ax;->a:Lcom/qianxian/Sidebar/aw;

    iput-object p2, p0, Lcom/qianxian/Sidebar/ax;->b:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v1, 0x1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app"

    iget-object v2, p0, Lcom/qianxian/Sidebar/ax;->b:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/qianxian/Sidebar/ax;->a:Lcom/qianxian/Sidebar/aw;

    invoke-static {v0}, Lcom/qianxian/Sidebar/aw;->a(Lcom/qianxian/Sidebar/aw;)Lcom/qianxian/Sidebar/av;

    move-result-object v0

    invoke-static {v0}, Lcom/qianxian/Sidebar/av;->a(Lcom/qianxian/Sidebar/av;)Lcom/qianxian/Sidebar/Sidebar;

    move-result-object v0

    const-class v2, Lcom/qianxian/Sidebar/Sidebar;

    const/4 v4, 0x5

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/qianxian/Sidebar/Sidebar;->a(ILjava/lang/Class;IILandroid/os/Bundle;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
