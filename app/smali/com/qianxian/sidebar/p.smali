.class Lcom/qianxian/sidebar/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/MainActivity;


# direct methods
.method constructor <init>(Lcom/qianxian/sidebar/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/p;->a:Lcom/qianxian/sidebar/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/qianxian/sidebar/p;->a:Lcom/qianxian/sidebar/MainActivity;

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Lcom/qianxian/sidebar/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/qianxian/sidebar/p;->a:Lcom/qianxian/sidebar/MainActivity;

    invoke-virtual {v0}, Lcom/qianxian/sidebar/MainActivity;->finish()V

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
