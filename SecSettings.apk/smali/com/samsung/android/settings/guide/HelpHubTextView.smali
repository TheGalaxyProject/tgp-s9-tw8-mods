.class public final Lcom/samsung/android/settings/guide/HelpHubTextView;
.super Landroid/widget/TextView;
.source "HelpHubTextView.java"


# static fields
.field private static final ICON_POINTER_PS_NUM:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "%1$s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "%2$s"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "%3$s"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "%4$s"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "%5$s"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/guide/HelpHubTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 25

    invoke-direct/range {p0 .. p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/guide/HelpHubTextView;->mContext:Landroid/content/Context;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/settings/R$styleable;->HelpHubTextView:[I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v16

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/16 v17, 0x3

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/16 v17, 0x13

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    const/16 v17, 0x12

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    const/4 v5, 0x0

    const-string/jumbo v17, "Settings-HelpHubTextView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "iconId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v14, :cond_cd

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v13

    if-eqz v13, :cond_c4

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->length()I

    move-result v17

    if-lez v17, :cond_c1

    const/4 v6, 0x0

    :goto_a1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_a1

    :cond_c1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    :cond_c4
    :goto_c4
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v5, :cond_182

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/guide/HelpHubTextView;->applyStringWithString()V

    :goto_cc
    return-void

    :cond_cd
    if-lez v15, :cond_de

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    :cond_de
    if-lez v12, :cond_117

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v13

    if-eqz v13, :cond_c4

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->length()I

    move-result v17

    if-lez v17, :cond_113

    const/4 v6, 0x0

    :goto_f3
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_113

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_f3

    :cond_113
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_c4

    :cond_117
    if-lez v7, :cond_c4

    if-eqz v11, :cond_12f

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->isVZW()Z

    move-result v17

    if-eqz v17, :cond_12f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    :cond_12f
    if-eqz v9, :cond_145

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->isSPR()Z

    move-result v17

    if-eqz v17, :cond_145

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    :cond_145
    if-eqz v8, :cond_15c

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->isATT()Z

    move-result v17

    if-eqz v17, :cond_15c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c4

    :cond_15c
    if-eqz v10, :cond_173

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->isUSC()Z

    move-result v17

    if-eqz v17, :cond_173

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c4

    :cond_173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c4

    :cond_182
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/guide/HelpHubTextView;->applyStringWithIcon()V

    goto/16 :goto_cc
.end method

.method private applyStringWithIcon()V
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    const-string/jumbo v3, "Settings-HelpHubTextView"

    const-string/jumbo v4, "applyStringWithIcon() :: message is Null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const-string/jumbo v3, "%s"

    const-string/jumbo v4, "\ufffc"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_54

    const-string/jumbo v3, "\ufffc"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_33
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_50

    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_50
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_54
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_bd

    const-string/jumbo v3, "\ufffc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9e

    const-string/jumbo v4, "\ufffc"

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/samsung/android/settings/guide/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    :cond_7e
    :goto_7e
    if-eqz v2, :cond_9d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/guide/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "Settings-HelpHubTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "applyStringWithIcon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    return-void

    :cond_9e
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7e

    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v5

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/samsung/android/settings/guide/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    goto :goto_7e

    :cond_bd
    const/4 v0, 0x0

    :goto_be
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e4

    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v0

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/samsung/android/settings/guide/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    :cond_e4
    add-int/lit8 v0, v0, 0x1

    goto :goto_be
.end method

.method private applyStringWithString()V
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    const-string/jumbo v3, "%s"

    const-string/jumbo v4, "\ufffc"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1b
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_25

    return-void

    :cond_25
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_77

    const-string/jumbo v3, "\ufffc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_54

    const-string/jumbo v4, "\ufffc"

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_4e
    :goto_4e
    if-eqz v1, :cond_53

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_53
    return-void

    :cond_54
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4e

    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v5

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_77
    const/4 v0, 0x0

    :goto_78
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4e

    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a2

    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v0

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_78
.end method

.method private insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;
    .registers 16

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_b
    invoke-virtual {v3, p4, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_4d

    const-string/jumbo v6, "Settings-HelpHubTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dummy image is used. Please apply correct resource. Resource name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_41} :catch_42

    return-object p3

    :catch_42
    move-exception v1

    const-string/jumbo v6, "Settings-HelpHubTextView"

    const-string/jumbo v7, "Cannot find resource"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p3

    :cond_4d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v0, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v4, Lcom/samsung/android/settings/guide/HelpHubImageSpan;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/guide/HelpHubImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v6, v6, v9

    if-ltz v6, :cond_70

    const v6, 0x7f050029

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_78

    :cond_70
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    iput v6, v4, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->fontScale:F

    :cond_78
    const v6, 0x7f070494

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, v4, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->imageSideMargin:F

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x11

    invoke-virtual {p3, v4, v2, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p3
.end method

.method public static isATT()Z
    .registers 2

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public static isSPR()Z
    .registers 2

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "SPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_31
    const/4 v1, 0x1

    return v1

    :cond_33
    const/4 v1, 0x0

    return v1
.end method

.method public static isUSC()Z
    .registers 2

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public static isVZW()Z
    .registers 2

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public static readSalesCode()Ljava/lang/String;
    .registers 5

    const-string/jumbo v1, ""

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Settings-HelpHubTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readSalesCode(): menutreeCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    :try_start_30
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_43} :catch_45

    move-result-object v1

    :cond_44
    :goto_44
    return-object v1

    :catch_45
    move-exception v0

    const-string/jumbo v2, "Settings-HelpHubTextView"

    const-string/jumbo v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method
