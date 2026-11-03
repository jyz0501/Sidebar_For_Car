.class Lcom/hzsoft/standout/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/hzsoft/standout/StandOutWindow;

.field private final synthetic b:Lcom/hzsoft/standout/b/b;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/hzsoft/standout/StandOutWindow;Lcom/hzsoft/standout/b/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/hzsoft/standout/a;->a:Lcom/hzsoft/standout/StandOutWindow;

    iput-object p2, p0, Lcom/hzsoft/standout/a;->b:Lcom/hzsoft/standout/b/b;

    iput p3, p0, Lcom/hzsoft/standout/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/hzsoft/standout/a;->a:Lcom/hzsoft/standout/StandOutWindow;

    iget-object v0, v0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hzsoft/standout/a;->b:Lcom/hzsoft/standout/b/b;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/hzsoft/standout/a;->b:Lcom/hzsoft/standout/b/b;

    iput v3, v0, Lcom/hzsoft/standout/b/b;->h:I

    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    iget v1, p0, Lcom/hzsoft/standout/a;->c:I

    iget-object v2, p0, Lcom/hzsoft/standout/a;->a:Lcom/hzsoft/standout/StandOutWindow;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hzsoft/standout/g;->c(ILjava/lang/Class;)V

    iget-object v0, p0, Lcom/hzsoft/standout/a;->a:Lcom/hzsoft/standout/StandOutWindow;

    invoke-virtual {v0}, Lcom/hzsoft/standout/StandOutWindow;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v3, Lcom/hzsoft/standout/StandOutWindow;->l:Z

    iget-object v0, p0, Lcom/hzsoft/standout/a;->a:Lcom/hzsoft/standout/StandOutWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hzsoft/standout/StandOutWindow;->stopForeground(Z)V

    :cond_0
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
