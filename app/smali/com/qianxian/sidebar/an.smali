.class Lcom/qianxian/sidebar/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/Sidebar;


# direct methods
.method constructor <init>(Lcom/qianxian/sidebar/Sidebar;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/an;->a:Lcom/qianxian/sidebar/Sidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    sput v0, Lcom/qianxian/sidebar/Sidebar;->a:I

    iget-object v0, p0, Lcom/qianxian/sidebar/an;->a:Lcom/qianxian/sidebar/Sidebar;

    const-class v1, Lcom/qianxian/sidebar/AppSelector;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/qianxian/sidebar/Sidebar;->c(Landroid/content/Context;Ljava/lang/Class;I)V

    return-void
.end method
