.class Lcom/qianxian/sidebar/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/Sidebar;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianxian/sidebar/Sidebar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/ar;->a:Lcom/qianxian/sidebar/Sidebar;

    iput-object p2, p0, Lcom/qianxian/sidebar/ar;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/qianxian/sidebar/ar;->a:Lcom/qianxian/sidebar/Sidebar;

    invoke-static {v0}, Lcom/qianxian/sidebar/Sidebar;->a(Lcom/qianxian/sidebar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "apps"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianxian/sidebar/ar;->a:Lcom/qianxian/sidebar/Sidebar;

    invoke-static {v1}, Lcom/qianxian/sidebar/Sidebar;->a(Lcom/qianxian/sidebar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "apps"

    iget-object v3, p0, Lcom/qianxian/sidebar/ar;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(?m)^[ \t]*\r?\n"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qianxian/sidebar/Sidebar;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/qianxian/sidebar/Sidebar;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/qianxian/sidebar/ar;->a:Lcom/qianxian/sidebar/Sidebar;

    invoke-static {v0}, Lcom/qianxian/sidebar/Sidebar;->f(Lcom/qianxian/sidebar/Sidebar;)V

    return-void
.end method
