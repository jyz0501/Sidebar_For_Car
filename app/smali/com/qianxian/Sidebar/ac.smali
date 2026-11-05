.class Lcom/qianxian/Sidebar/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/x;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/x;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/ac;->a:Lcom/qianxian/Sidebar/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/qianxian/Sidebar/ac;->a:Lcom/qianxian/Sidebar/x;

    invoke-static {v0}, Lcom/qianxian/Sidebar/x;->a(Lcom/qianxian/Sidebar/x;)Lcom/qianxian/Sidebar/SettingsActivity;

    move-result-object v0

    const-class v1, Lcom/qianxian/Sidebar/SwipeDetector;

    invoke-static {v0, v1, v2}, Lcom/hzsoft/standout/StandOutWindow;->c(Landroid/content/Context;Ljava/lang/Class;I)V

    iget-object v0, p0, Lcom/qianxian/Sidebar/ac;->a:Lcom/qianxian/Sidebar/x;

    invoke-static {v0}, Lcom/qianxian/Sidebar/x;->a(Lcom/qianxian/Sidebar/x;)Lcom/qianxian/Sidebar/SettingsActivity;

    move-result-object v0

    const-class v1, Lcom/qianxian/Sidebar/SwipeDetector;

    const/4 v3, 0x2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-class v5, Lcom/qianxian/Sidebar/SwipeDetector;

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow;->b(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V

    iget-object v0, p0, Lcom/qianxian/Sidebar/ac;->a:Lcom/qianxian/Sidebar/x;

    invoke-static {v0}, Lcom/qianxian/Sidebar/x;->a(Lcom/qianxian/Sidebar/x;)Lcom/qianxian/Sidebar/SettingsActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/qianxian/Sidebar/SettingsActivity;->a(Lcom/qianxian/Sidebar/SettingsActivity;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qianxian/Sidebar/ac;->a:Lcom/qianxian/Sidebar/x;

    invoke-static {v0}, Lcom/qianxian/Sidebar/x;->a(Lcom/qianxian/Sidebar/x;)Lcom/qianxian/Sidebar/SettingsActivity;

    move-result-object v0

    const-class v1, Lcom/qianxian/Sidebar/SwipeDetector;

    invoke-static {v0, v1}, Lcom/hzsoft/standout/StandOutWindow;->a(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/qianxian/Sidebar/ac;->a:Lcom/qianxian/Sidebar/x;

    invoke-static {v0}, Lcom/qianxian/Sidebar/x;->a(Lcom/qianxian/Sidebar/x;)Lcom/qianxian/Sidebar/SettingsActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianxian/Sidebar/SettingsActivity;->a(Lcom/qianxian/Sidebar/SettingsActivity;Z)V

    goto :goto_0
.end method
