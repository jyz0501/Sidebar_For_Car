.class Lcom/qianxian/Sidebar/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/Sidebar;

.field private final synthetic b:Landroid/widget/PopupWindow;

.field private final synthetic c:Lcom/hzsoft/standout/e;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/Sidebar;Landroid/widget/PopupWindow;Lcom/hzsoft/standout/e;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/as;->a:Lcom/qianxian/Sidebar/Sidebar;

    iput-object p2, p0, Lcom/qianxian/Sidebar/as;->b:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/qianxian/Sidebar/as;->c:Lcom/hzsoft/standout/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/qianxian/Sidebar/as;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/qianxian/Sidebar/as;->c:Lcom/hzsoft/standout/e;

    iget-object v0, v0, Lcom/hzsoft/standout/e;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
