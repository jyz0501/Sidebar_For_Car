.class public Lcom/qianxian/sidebar/BootReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:Z


# instance fields
.field b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qianxian/sidebar/BootReceiver;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qianxian/sidebar/BootReceiver;->b:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    sput-boolean v2, Lcom/qianxian/sidebar/BootReceiver;->a:Z

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "boot"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianxian/sidebar/BootReceiver;->b:Z

    const-string v0, "boot"

    iget-boolean v1, p0, Lcom/qianxian/sidebar/BootReceiver;->b:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/qianxian/sidebar/BootReceiver;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/qianxian/sidebar/Compat;->bootStart(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
