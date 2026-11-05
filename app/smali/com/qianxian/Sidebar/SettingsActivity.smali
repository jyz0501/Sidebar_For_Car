.class public Lcom/qianxian/Sidebar/SettingsActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qianxian/Sidebar/SettingsActivity;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/qianxian/Sidebar/SettingsActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qianxian/Sidebar/SettingsActivity;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v2, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/qianxian/Sidebar/SwipeDetector;

    const/4 v3, 0x2

    const-class v5, Lcom/qianxian/Sidebar/SwipeDetector;

    move-object v0, p0

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow;->b(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/qianxian/Sidebar/x;

    invoke-direct {v1, p0}, Lcom/qianxian/Sidebar/x;-><init>(Lcom/qianxian/Sidebar/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/qianxian/Sidebar/SettingsActivity;->setContentView(I)V

    const-class v0, Lcom/qianxian/Sidebar/SwipeDetector;

    invoke-static {p0, v0, v2}, Lcom/hzsoft/standout/StandOutWindow;->c(Landroid/content/Context;Ljava/lang/Class;I)V

    const-class v0, Lcom/qianxian/Sidebar/Sidebar;

    invoke-static {p0, v0}, Lcom/hzsoft/standout/StandOutWindow;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v0, Lcom/qianxian/Sidebar/AppSelector;

    invoke-static {p0, v0}, Lcom/hzsoft/standout/StandOutWindow;->a(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/qianxian/Sidebar/SwipeDetector;

    const/4 v3, 0x2

    const-class v5, Lcom/qianxian/Sidebar/SwipeDetector;

    move-object v0, p0

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow;->b(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qianxian/Sidebar/SwipeDetector;->a:Z

    invoke-virtual {p0}, Lcom/qianxian/Sidebar/SettingsActivity;->b()V

    invoke-virtual {p0}, Lcom/qianxian/Sidebar/SettingsActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 7

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/qianxian/Sidebar/SettingsActivity;->a:Z

    if-nez v0, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/qianxian/Sidebar/SwipeDetector;

    const/4 v3, 0x3

    const-class v5, Lcom/qianxian/Sidebar/SwipeDetector;

    move-object v0, p0

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow;->b(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/qianxian/Sidebar/SettingsActivity;->finish()V

    return-void
.end method

.method public onExportConfig(Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/qianxian/Sidebar/Compat;->exportConfig(Landroid/app/Activity;)V

    return-void
.end method

.method public onImportConfig(Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/qianxian/Sidebar/Compat;->importConfig(Landroid/app/Activity;)V

    return-void
.end method
