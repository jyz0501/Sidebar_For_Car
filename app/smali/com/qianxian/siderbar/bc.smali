.class Lcom/qianxian/siderbar/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/bb;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/bb;I)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/bc;->a:Lcom/qianxian/siderbar/bb;

    iput p2, p0, Lcom/qianxian/siderbar/bc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v1, 0x1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "widget"

    iget v2, p0, Lcom/qianxian/siderbar/bc;->b:I

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/qianxian/siderbar/bc;->a:Lcom/qianxian/siderbar/bb;

    invoke-static {v0}, Lcom/qianxian/siderbar/bb;->a(Lcom/qianxian/siderbar/bb;)Lcom/qianxian/siderbar/av;

    move-result-object v0

    invoke-static {v0}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v0

    const-class v2, Lcom/qianxian/siderbar/Sidebar;

    const/4 v4, 0x5

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/qianxian/siderbar/Sidebar;->a(ILjava/lang/Class;IILandroid/os/Bundle;)V

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
