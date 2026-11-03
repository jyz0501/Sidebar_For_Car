.class Lcom/hzsoft/standout/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/hzsoft/standout/StandOutWindow;

.field private final synthetic b:Lcom/hzsoft/standout/b/b;


# direct methods
.method constructor <init>(Lcom/hzsoft/standout/StandOutWindow;Lcom/hzsoft/standout/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hzsoft/standout/d;->a:Lcom/hzsoft/standout/StandOutWindow;

    iput-object p2, p0, Lcom/hzsoft/standout/d;->b:Lcom/hzsoft/standout/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/hzsoft/standout/d;->a:Lcom/hzsoft/standout/StandOutWindow;

    iget-object v0, v0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hzsoft/standout/d;->b:Lcom/hzsoft/standout/b/b;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/hzsoft/standout/d;->b:Lcom/hzsoft/standout/b/b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/hzsoft/standout/b/b;->h:I

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
