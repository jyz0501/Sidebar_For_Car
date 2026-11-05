.class Lcom/qianxian/Sidebar/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/AppSelector;

.field private final synthetic b:I

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/AppSelector;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/l;->a:Lcom/qianxian/Sidebar/AppSelector;

    iput p2, p0, Lcom/qianxian/Sidebar/l;->b:I

    iput-object p3, p0, Lcom/qianxian/Sidebar/l;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0a000e

    iget-object v0, p0, Lcom/qianxian/Sidebar/l;->a:Lcom/qianxian/Sidebar/AppSelector;

    iget v1, p0, Lcom/qianxian/Sidebar/l;->b:I

    iget-object v2, p0, Lcom/qianxian/Sidebar/l;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/qianxian/Sidebar/AppSelector;->a(Lcom/qianxian/Sidebar/AppSelector;ILandroid/view/View;)V

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/qianxian/Sidebar/l;->a:Lcom/qianxian/Sidebar/AppSelector;

    invoke-virtual {v0}, Lcom/qianxian/Sidebar/AppSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/qianxian/Sidebar/l;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/qianxian/Sidebar/l;->a:Lcom/qianxian/Sidebar/AppSelector;

    invoke-virtual {v1}, Lcom/qianxian/Sidebar/AppSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/qianxian/Sidebar/l;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
