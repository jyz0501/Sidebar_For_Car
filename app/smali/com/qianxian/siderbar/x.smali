.class Lcom/qianxian/siderbar/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qianxian/siderbar/x;)Lcom/qianxian/siderbar/SettingsActivity;
    .locals 1

    iget-object v0, p0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v3, "s_width"

    const/16 v4, 0x3c

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "s_opacity"

    const/16 v4, 0x1e

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v3, "e_width"

    const/16 v4, 0x14

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "e_height"

    const/16 v4, 0x1f4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v3, "side"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string v3, "e_pos"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v3, "s_color"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string v3, "animationSpeed"

    const/16 v4, 0x226

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v3, "boot"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v3, "lock"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string v3, "vibrate"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    const-string v3, "notification"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v4, 0x7f0a001e

    invoke-virtual {v3, v4}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v19, 0x7f0a001a

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v18, Lcom/qianxian/siderbar/y;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/qianxian/siderbar/y;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v4, Lcom/qianxian/siderbar/ad;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/qianxian/siderbar/ad;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v2, Lcom/qianxian/siderbar/ae;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/qianxian/siderbar/ae;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v2, Lcom/qianxian/siderbar/af;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/qianxian/siderbar/af;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v4, 0x7f0a0024

    invoke-virtual {v3, v4}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v5, 0x7f0a0022

    invoke-virtual {v4, v5}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v6, 0x7f0a0013

    invoke-virtual {v5, v6}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v16, 0x7f0a0018

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    add-int/lit8 v8, v8, -0x32

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v8, Lcom/qianxian/siderbar/ag;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v7}, Lcom/qianxian/siderbar/ag;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v4, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v3, Lcom/qianxian/siderbar/ah;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lcom/qianxian/siderbar/ah;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    neg-int v3, v15

    add-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v3, Lcom/qianxian/siderbar/ai;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lcom/qianxian/siderbar/ai;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v2, Lcom/qianxian/siderbar/aj;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/qianxian/siderbar/aj;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    add-int/lit8 v2, v11, -0x32

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v2, Lcom/qianxian/siderbar/ak;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/qianxian/siderbar/ak;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v4, 0x7f0a001d

    invoke-virtual {v3, v4}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3, v14}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v4, 0x0

    if-nez v12, :cond_0

    packed-switch v13, :pswitch_data_0

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v4, Lcom/qianxian/siderbar/aa;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/qianxian/siderbar/aa;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v2, Lcom/qianxian/siderbar/ab;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/qianxian/siderbar/ab;-><init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qianxian/siderbar/x;->a:Lcom/qianxian/siderbar/SettingsActivity;

    const v3, 0x7f0a0011

    invoke-virtual {v2, v3}, Lcom/qianxian/siderbar/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    new-instance v3, Lcom/qianxian/siderbar/ac;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/qianxian/siderbar/ac;-><init>(Lcom/qianxian/siderbar/x;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :pswitch_0
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    packed-switch v13, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v4, 0x5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
