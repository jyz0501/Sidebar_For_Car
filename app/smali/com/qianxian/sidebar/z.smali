.class Lcom/qianxian/sidebar/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/y;

.field private final synthetic b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/qianxian/sidebar/y;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/z;->a:Lcom/qianxian/sidebar/y;

    iput-object p2, p0, Lcom/qianxian/sidebar/z;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/qianxian/sidebar/z;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "notification"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/qianxian/sidebar/z;->a:Lcom/qianxian/sidebar/y;

    invoke-static {v0}, Lcom/qianxian/sidebar/y;->a(Lcom/qianxian/sidebar/y;)Lcom/qianxian/sidebar/x;

    move-result-object v0

    invoke-static {v0}, Lcom/qianxian/sidebar/x;->a(Lcom/qianxian/sidebar/x;)Lcom/qianxian/sidebar/SettingsActivity;

    move-result-object v0

    const-class v1, Lcom/qianxian/sidebar/SwipeDetector;

    const/4 v3, 0x5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-class v5, Lcom/qianxian/sidebar/SwipeDetector;

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow;->b(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V

    return-void
.end method
