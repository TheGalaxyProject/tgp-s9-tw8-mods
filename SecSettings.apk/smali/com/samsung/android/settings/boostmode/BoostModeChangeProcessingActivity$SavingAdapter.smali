.class Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoostModeChangeProcessingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingAdapter"
.end annotation


# instance fields
.field private mAllItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public buildAllItems(Landroid/content/Intent;)V
    .registers 29

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-wide/16 v4, 0x0

    const-string/jumbo v2, "key_item_max_brightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    if-eqz v20, :cond_4b

    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v21, v2, -0x5a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v4, 0x0

    const-wide/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v9, 0x7f120dde

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v21, :cond_1eb

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v10, 0x7f121cb3

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_43
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    :cond_4b
    const-string/jumbo v2, "key_item_resolution"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    if-eqz v20, :cond_bd

    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_256

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f12178d

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_6f
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getDisplayPxSize()Landroid/graphics/Point;

    move-result-object v24

    if-eqz v24, :cond_9c

    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float v25, v2, v3

    const v2, 0x3fe38e39

    cmpl-float v2, v25, v2

    if-lez v2, :cond_9c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_9c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v22, v4, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v9, 0x7f12178c

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    :cond_bd
    const-string/jumbo v2, "key_item_video_enhancer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    if-eqz v20, :cond_103

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v22, v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f120cde

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_20b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f120544

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_fa
    move-wide v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    :cond_103
    const-string/jumbo v2, "key_item_uhq_upscaler"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    if-eqz v20, :cond_15c

    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f120542

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v2

    if-eqz v2, :cond_22a

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_218

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f120519

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_13a
    :goto_13a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v22, v4, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f121c75

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-wide v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    :cond_15c
    const-string/jumbo v2, "key_item_game_launcher"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    if-eqz v20, :cond_1a3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v14, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v8, 0x1

    add-long v22, v4, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f120c85

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_23c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f120544

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_199
    move-wide/from16 v16, v4

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    :cond_1a3
    const-string/jumbo v2, "key_item_game_tools"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    if-eqz v20, :cond_1ea

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v14, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v8, 0x1

    add-long v22, v4, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f120c88

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_249

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f120544

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_1e0
    move-wide/from16 v16, v4

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    :cond_1ea
    return-void

    :cond_1eb
    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_43

    :pswitch_1f1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f121789

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6f

    :pswitch_1fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f121787

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6f

    :cond_20b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f120542

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_fa

    :cond_218
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_13a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f12051a

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_13a

    :cond_22a
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_13a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f120544

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_13a

    :cond_23c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f120542

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_199

    :cond_249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f120542

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_1e0

    nop

    :pswitch_data_256
    .packed-switch 0x0
        :pswitch_1f1
        :pswitch_1fe
    .end packed-switch
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    if-eqz v0, :cond_d

    iget-wide v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->id:J

    :goto_c
    return-wide v2

    :cond_d
    const-wide/16 v2, 0x0

    goto :goto_c
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    const/high16 v4, 0x3f000000    # 0.5f

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    if-nez p2, :cond_97

    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {v0, v2, v8}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;)V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d01e2

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a06ae

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0a06ac

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    const v2, 0x7f0a06ad

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    const v2, 0x7f0a06aa

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    const v2, 0x7f0a06ab

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_60
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_7e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    :cond_7e
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget v2, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    packed-switch v2, :pswitch_data_ec

    :goto_96
    return-object p2

    :cond_97
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;

    goto :goto_60

    :pswitch_9e
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_96

    :pswitch_b8
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_96

    :pswitch_d2
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_96

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_b8
        :pswitch_9e
    .end packed-switch
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public playItemCheckingAnim()V
    .registers 7

    const-wide/16 v4, 0x29a

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-le v0, v1, :cond_47

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    iput v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138a

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    :goto_46
    return-void

    :cond_47
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138b

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_46
.end method
