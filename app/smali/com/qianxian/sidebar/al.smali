.class Lcom/qianxian/sidebar/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/Sidebar;


# direct methods
.method constructor <init>(Lcom/qianxian/sidebar/Sidebar;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/al;->a:Lcom/qianxian/sidebar/Sidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/qianxian/sidebar/al;->a:Lcom/qianxian/sidebar/Sidebar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qianxian/sidebar/Sidebar;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzsoft/standout/b/b;->a()Lcom/hzsoft/standout/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/qianxian/sidebar/al;->a:Lcom/qianxian/sidebar/Sidebar;

    sget v2, Lcom/qianxian/sidebar/Sidebar;->e:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/qianxian/sidebar/Sidebar;->a(Lcom/qianxian/sidebar/Sidebar;F)I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hzsoft/standout/b/k;->a(II)Lcom/hzsoft/standout/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzsoft/standout/b/k;->a()V

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
