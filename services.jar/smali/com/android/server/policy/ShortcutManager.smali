.class Lcom/android/server/policy/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShiftShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/policy/ShortcutManager;->loadShortcuts()V

    return-void
.end method

.method private loadShortcuts()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1170003

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    const-string/jumbo v22, "bookmarks"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_25
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_35

    :cond_34
    :goto_34
    return-void

    :cond_35
    const-string/jumbo v22, "bookmark"

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_34

    const-string/jumbo v22, "package"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v22, "class"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v22, "shortcut"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v22, "category"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v22, "shift"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_ce

    const-string/jumbo v22, "ShortcutManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to get shortcut for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_bc} :catch_be
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_bc} :catch_131

    goto/16 :goto_25

    :catch_be
    move-exception v8

    const-string/jumbo v22, "ShortcutManager"

    const-string/jumbo v23, "Got exception parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    :cond_ce
    const/16 v22, 0x0

    :try_start_d0
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    if-eqz v17, :cond_141

    const-string/jumbo v22, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    :goto_e5
    if-eqz v14, :cond_19b

    if-eqz v4, :cond_19b

    const/4 v10, 0x0

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v14, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ef
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d0 .. :try_end_ef} :catch_be
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_ef} :catch_131

    const v22, 0xc2000

    :try_start_f2
    move/from16 v0, v22

    invoke-virtual {v13, v5, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f2 .. :try_end_f7} :catch_143
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f2 .. :try_end_f7} :catch_be
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f7} :catch_131

    move-result-object v10

    :goto_f8
    :try_start_f8
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_115
    new-instance v18, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11}, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    if-eqz v12, :cond_1d2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_12f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f8 .. :try_end_12f} :catch_be
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_12f} :catch_131

    goto/16 :goto_25

    :catch_131
    move-exception v7

    const-string/jumbo v22, "ShortcutManager"

    const-string/jumbo v23, "Got exception parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    :cond_141
    const/4 v12, 0x0

    goto :goto_e5

    :catch_143
    move-exception v6

    const/16 v22, 0x1

    :try_start_146
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    new-instance v5, Landroid/content/ComponentName;

    const/16 v22, 0x0

    aget-object v22, v15, v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_161
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_146 .. :try_end_161} :catch_be
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_161} :catch_131

    const v22, 0xc2000

    :try_start_164
    move/from16 v0, v22

    invoke-virtual {v13, v5, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_169
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_164 .. :try_end_169} :catch_16b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_164 .. :try_end_169} :catch_be
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_169} :catch_131

    move-result-object v10

    goto :goto_f8

    :catch_16b
    move-exception v9

    :try_start_16c
    const-string/jumbo v22, "ShortcutManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to add bookmark: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    :cond_19b
    if-eqz v3, :cond_1ab

    const-string/jumbo v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v21, ""

    goto/16 :goto_115

    :cond_1ab
    const-string/jumbo v22, "ShortcutManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to add bookmark for shortcut "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": missing package/class or category attributes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_1d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16c .. :try_end_1e1} :catch_be
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_1e1} :catch_131

    goto/16 :goto_25
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .registers 11

    const/4 v4, 0x0

    const/4 v1, 0x0

    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2f

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_31

    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    :goto_c
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    :cond_18
    if-nez v1, :cond_2a

    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    :cond_2a
    if-eqz v1, :cond_2e

    iget-object v4, v1, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    :cond_2e
    return-object v4

    :cond_2f
    const/4 v0, 0x0

    goto :goto_8

    :cond_31
    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    goto :goto_c
.end method
