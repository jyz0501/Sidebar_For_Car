.class public Lcom/qianxian/sidebar/PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/qianxian/sidebar/Sidebar;

    const/4 v2, 0x1

    const/4 v3, 0x6

    const-class v5, Lcom/qianxian/sidebar/Sidebar;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow;->a(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianxian/sidebar/Compat;->startServiceCompat(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
