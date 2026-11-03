.class Lcom/qianxian/siderbar/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/x;

.field private final synthetic b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/y;->a:Lcom/qianxian/siderbar/x;

    iput-object p2, p0, Lcom/qianxian/siderbar/y;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qianxian/siderbar/y;)Lcom/qianxian/siderbar/x;
    .locals 1

    iget-object v0, p0, Lcom/qianxian/siderbar/y;->a:Lcom/qianxian/siderbar/x;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/qianxian/siderbar/y;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "notification"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez p2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/qianxian/siderbar/y;->a:Lcom/qianxian/siderbar/x;

    invoke-static {v1}, Lcom/qianxian/siderbar/x;->a(Lcom/qianxian/siderbar/x;)Lcom/qianxian/siderbar/SettingsActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "About the notification"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "The notification prevents Android from killing Sidebar in low memory situations.\n\nOn Android 4.1+ devices, it can be disabled via the App info in settings."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Make the icon invisible"

    new-instance v3, Lcom/qianxian/siderbar/z;

    iget-object v4, p0, Lcom/qianxian/siderbar/y;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {v3, p0, v4}, Lcom/qianxian/siderbar/z;-><init>(Lcom/qianxian/siderbar/y;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/qianxian/siderbar/y;->a:Lcom/qianxian/siderbar/x;

    invoke-static {v0}, Lcom/qianxian/siderbar/x;->a(Lcom/qianxian/siderbar/x;)Lcom/qianxian/siderbar/SettingsActivity;

    move-result-object v0

    const-class v1, Lcom/qianxian/siderbar/SwipeDetector;

    const/4 v3, 0x5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-class v5, Lcom/qianxian/siderbar/SwipeDetector;

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow;->b(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V

    return-void
.end method
