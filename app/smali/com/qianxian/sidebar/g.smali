.class Lcom/qianxian/sidebar/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/AppSelector;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/qianxian/sidebar/AppSelector;I)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/g;->a:Lcom/qianxian/sidebar/AppSelector;

    iput p2, p0, Lcom/qianxian/sidebar/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/qianxian/sidebar/g;->a:Lcom/qianxian/sidebar/AppSelector;

    iget v1, p0, Lcom/qianxian/sidebar/g;->b:I

    const-class v2, Lcom/qianxian/sidebar/Sidebar;

    sget v4, Lcom/qianxian/sidebar/Sidebar;->a:I

    invoke-virtual/range {v0 .. v5}, Lcom/qianxian/sidebar/AppSelector;->a(ILjava/lang/Class;IILandroid/os/Bundle;)V

    :goto_0
    iget-object v0, p0, Lcom/qianxian/sidebar/g;->a:Lcom/qianxian/sidebar/AppSelector;

    iget v1, p0, Lcom/qianxian/sidebar/g;->b:I

    invoke-virtual {v0, v1}, Lcom/qianxian/sidebar/AppSelector;->h(I)V

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianxian/sidebar/bg;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "widget"

    iget v0, v0, Lcom/qianxian/sidebar/bg;->a:I

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/qianxian/sidebar/g;->a:Lcom/qianxian/sidebar/AppSelector;

    iget v1, p0, Lcom/qianxian/sidebar/g;->b:I

    const-class v2, Lcom/qianxian/sidebar/Sidebar;

    sget v4, Lcom/qianxian/sidebar/Sidebar;->a:I

    invoke-virtual/range {v0 .. v5}, Lcom/qianxian/sidebar/AppSelector;->a(ILjava/lang/Class;IILandroid/os/Bundle;)V

    goto :goto_0
.end method
