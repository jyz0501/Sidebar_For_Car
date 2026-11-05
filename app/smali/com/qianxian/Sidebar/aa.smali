.class Lcom/qianxian/Sidebar/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/x;

.field private final synthetic b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/x;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/aa;->a:Lcom/qianxian/Sidebar/x;

    iput-object p2, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->a:Lcom/qianxian/Sidebar/x;

    invoke-static {v0}, Lcom/qianxian/Sidebar/x;->a(Lcom/qianxian/Sidebar/x;)Lcom/qianxian/Sidebar/SettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianxian/Sidebar/SettingsActivity;->a()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "side"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "e_pos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "side"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "e_pos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "side"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "e_pos"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "side"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "e_pos"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "side"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "e_pos"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "side"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/qianxian/Sidebar/aa;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "e_pos"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
