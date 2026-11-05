.class Lcom/qianxian/Sidebar/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/av;

.field private final synthetic b:I

.field private final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/av;ILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/bf;->a:Lcom/qianxian/Sidebar/av;

    iput p2, p0, Lcom/qianxian/Sidebar/bf;->b:I

    iput-object p3, p0, Lcom/qianxian/Sidebar/bf;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qianxian/Sidebar/bf;->a:Lcom/qianxian/Sidebar/av;

    invoke-static {v2}, Lcom/qianxian/Sidebar/av;->a(Lcom/qianxian/Sidebar/av;)Lcom/qianxian/Sidebar/Sidebar;

    move-result-object v2

    invoke-static {v2}, Lcom/qianxian/Sidebar/Sidebar;->a(Lcom/qianxian/Sidebar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "lock"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/qianxian/Sidebar/bf;->a:Lcom/qianxian/Sidebar/av;

    invoke-static {v1}, Lcom/qianxian/Sidebar/av;->a(Lcom/qianxian/Sidebar/av;)Lcom/qianxian/Sidebar/Sidebar;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qianxian/Sidebar/Sidebar;->b(Lcom/qianxian/Sidebar/Sidebar;Z)V

    iget-object v1, p0, Lcom/qianxian/Sidebar/bf;->a:Lcom/qianxian/Sidebar/av;

    invoke-static {v1}, Lcom/qianxian/Sidebar/av;->a(Lcom/qianxian/Sidebar/av;)Lcom/qianxian/Sidebar/Sidebar;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "widget:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/qianxian/Sidebar/bf;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianxian/Sidebar/bf;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/qianxian/Sidebar/Sidebar;->a(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
