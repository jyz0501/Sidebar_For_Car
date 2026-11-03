.class Lcom/qianxian/siderbar/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/Sidebar;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/Sidebar;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/ao;->a:Lcom/qianxian/siderbar/Sidebar;

    iput-object p2, p0, Lcom/qianxian/siderbar/ao;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/qianxian/siderbar/ao;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const v1, 0x7f020012

    const/4 v2, 0x0

    sget-boolean v0, Lcom/qianxian/siderbar/Sidebar;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianxian/siderbar/ao;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/qianxian/siderbar/ao;->b:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qianxian/siderbar/ao;->c:Ljava/lang/String;

    sput-object v0, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    sput-boolean v2, Lcom/qianxian/siderbar/Sidebar;->b:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/qianxian/siderbar/Sidebar;->b:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianxian/siderbar/ao;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianxian/siderbar/ao;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v0}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "apps"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianxian/siderbar/ao;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v1}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianxian/siderbar/ao;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " *****"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qianxian/siderbar/ao;->c:Ljava/lang/String;

    sget-object v3, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " *****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianxian/siderbar/ao;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(?m)^[ \t]*\r?\n"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "apps"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qianxian/siderbar/Sidebar;->b:Z

    iget-object v0, p0, Lcom/qianxian/siderbar/ao;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v0}, Lcom/qianxian/siderbar/Sidebar;->f(Lcom/qianxian/siderbar/Sidebar;)V

    goto/16 :goto_0

    :cond_2
    sget-boolean v0, Lcom/qianxian/siderbar/Sidebar;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianxian/siderbar/ao;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianxian/siderbar/ao;->a:Lcom/qianxian/siderbar/Sidebar;

    const-string v1, "Please choose `REPLACE` to another target"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
