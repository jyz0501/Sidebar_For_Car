.class Lcom/qianxian/siderbar/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/x;

.field private final synthetic b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/ab;->a:Lcom/qianxian/siderbar/x;

    iput-object p2, p0, Lcom/qianxian/siderbar/ab;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/16 v4, 0x82

    const/4 v3, 0x0

    const/16 v2, 0x28

    iget-object v0, p0, Lcom/qianxian/siderbar/ab;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "s_color"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/high16 v0, -0x1000000

    packed-switch p3, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/qianxian/siderbar/ab;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "color"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_0
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xe

    const/16 v1, 0x18

    invoke-static {v4, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x1e

    invoke-static {v0, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x42

    const/16 v1, 0x74

    invoke-static {v3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const/16 v0, -0x100

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xff

    const/16 v1, 0x69

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x30

    const/16 v1, 0x20

    const/16 v2, 0x60

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
