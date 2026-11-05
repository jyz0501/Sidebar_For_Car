.class Lcom/qianxian/Sidebar/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/AppDrawer;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/AppDrawer;I)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/c;->a:Lcom/qianxian/Sidebar/AppDrawer;

    iput p2, p0, Lcom/qianxian/Sidebar/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/qianxian/Sidebar/c;->a:Lcom/qianxian/Sidebar/AppDrawer;

    invoke-virtual {v0, v1}, Lcom/qianxian/Sidebar/AppDrawer;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/qianxian/Sidebar/c;->a:Lcom/qianxian/Sidebar/AppDrawer;

    iget v1, p0, Lcom/qianxian/Sidebar/c;->b:I

    invoke-virtual {v0, v1}, Lcom/qianxian/Sidebar/AppDrawer;->h(I)V

    return-void
.end method
