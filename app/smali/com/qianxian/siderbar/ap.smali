.class Lcom/qianxian/siderbar/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/Sidebar;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/Sidebar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/ap;->a:Lcom/qianxian/siderbar/Sidebar;

    iput-object p2, p0, Lcom/qianxian/siderbar/ap;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/qianxian/siderbar/ap;->b:Ljava/lang/String;

    sput-object v0, Lcom/qianxian/siderbar/Sidebar;->d:Ljava/lang/String;

    sput v2, Lcom/qianxian/siderbar/Sidebar;->a:I

    iget-object v0, p0, Lcom/qianxian/siderbar/ap;->a:Lcom/qianxian/siderbar/Sidebar;

    const-class v1, Lcom/qianxian/siderbar/AppSelector;

    invoke-static {v0, v1, v2}, Lcom/qianxian/siderbar/Sidebar;->c(Landroid/content/Context;Ljava/lang/Class;I)V

    return-void
.end method
