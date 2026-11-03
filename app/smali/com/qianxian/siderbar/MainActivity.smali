.class public Lcom/qianxian/siderbar/MainActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/qianxian/siderbar/Compat;->check(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_perm_ready

    return-void

    :cond_perm_ready
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/qianxian/siderbar/q;

    invoke-direct {v2, p0}, Lcom/qianxian/siderbar/q;-><init>(Lcom/qianxian/siderbar/MainActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianxian/siderbar/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/qianxian/siderbar/MainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/qianxian/siderbar/MainActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    sget-boolean v1, Lcom/qianxian/siderbar/BootReceiver;->a:Z

    if-nez v1, :cond_2

    const v1, 0x7f0a0007

    invoke-virtual {p0, v1}, Lcom/qianxian/siderbar/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/qianxian/siderbar/MainActivity;->finish()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Lcom/qianxian/siderbar/Compat;->requesting()Z

    move-result v0

    if-nez v0, :cond_wait_permission

    invoke-virtual {p0}, Lcom/qianxian/siderbar/MainActivity;->finish()V

    :cond_wait_permission
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0}, Lcom/qianxian/siderbar/Compat;->onRequestResult(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0}, Lcom/qianxian/siderbar/Compat;->onRequestResult(Landroid/app/Activity;)V

    return-void
.end method
