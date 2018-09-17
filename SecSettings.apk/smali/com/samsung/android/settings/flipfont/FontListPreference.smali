.class public Lcom/samsung/android/settings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;,
        Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static NO_CANCEL:Z

.field public static NO_WARNING_DIALOG:Z

.field public static REBOOT:Z

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field private mListDialogIsActive:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mRebootDialogIsActive:Z

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;

.field mState:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/flipfont/FontListPreference;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/flipfont/FontListPreference;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/flipfont/FontListPreference;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/flipfont/FontListPreference;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/flipfont/FontListPreference;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->REBOOT:Z

    sput-boolean v3, Lcom/samsung/android/settings/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    sput-boolean v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    sput-boolean v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.monotype.android.font.cooljazz"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.helvneuelt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.samsungsans"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.rosemary"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.applemint"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.tinkerbell"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.udrgothic"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.udmincho"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.arjpopb"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.kaiti"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.shaonv"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.miao"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const v5, 0x7f1211dd

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iput v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    iput v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    const/16 v1, 0x14

    iput v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    iput v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mListDialogIsActive:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    iput-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    iput-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "aa/bb"

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_37

    const-string/jumbo v1, "FlipFont"

    const-string/jumbo v2, "FontListPreference(Context context, AttributeSet attrs)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string/jumbo v1, "MONOTYPE"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setTitle(I)V

    const-string/jumbo v1, "MONOTYPE"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setTitle(I)V

    const v1, 0x7f1211e2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-nez v1, :cond_5a

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    :cond_5a
    const v1, 0x7f080182

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setDialogIcon(I)V

    return-void
.end method

.method private copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_38

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v4, 0x0

    :try_start_2c
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_3a

    move-result-object v4

    invoke-virtual {p1, p2, v4, p5}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v3

    :try_start_34
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_3d

    :goto_37
    return v3

    :catch_38
    move-exception v1

    return v3

    :catch_3a
    move-exception v1

    const/4 v6, 0x0

    return v6

    :catch_3d
    move-exception v2

    goto :goto_37
.end method


# virtual methods
.method protected RebootDialog()V
    .registers 7

    sget-boolean v3, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string/jumbo v3, "FlipFont"

    const-string/jumbo v4, "RebootDialog()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v3, :cond_12

    return-void

    :cond_12
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->hideList()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1211e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1211df

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/flipfont/FontListPreference$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$9;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    const v5, 0x7f1211de

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/flipfont/FontListPreference$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$10;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/flipfont/FontListPreference$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$11;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected badFontDialog(Ljava/lang/String;)V
    .registers 7

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, p1

    const v3, 0x7f1211db    # 1.9416E38f

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f1211da

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/flipfont/FontListPreference$13;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/flipfont/FontListPreference$13;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;Ljava/lang/String;)V

    const v4, 0x104000a

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/flipfont/FontListPreference$14;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$14;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .registers 22

    sget-boolean v17, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v17, :cond_22

    const-string/jumbo v17, "FlipFont"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "checkFont - checking apkname"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v11, 0x0

    :goto_23
    sget-object v17, Lcom/samsung/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_51

    if-eqz p1, :cond_4e

    sget-object v17, Lcom/samsung/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    aget-object v17, v17, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4e

    sget-boolean v17, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v17, :cond_4b

    const-string/jumbo v17, "FlipFont"

    const-string/jumbo v18, "**Apk name matches list**"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    const/16 v17, 0x0

    return v17

    :cond_4e
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_51
    sget-boolean v17, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v17, :cond_5e

    const-string/jumbo v17, "FlipFont"

    const-string/jumbo v18, "checkFont - check if valid certificate"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    const/4 v15, 0x0

    :try_start_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x40

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_76} :catch_1e8

    move-result-object v15

    :goto_77
    if-eqz v15, :cond_1e5

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v17, v16, v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    :try_start_85
    const-string/jumbo v17, "SHA"

    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    const/16 v17, 0x0

    aget-object v17, v16, v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v17, "T84drf8v3ZMOLvt2SFG/K7ODXgI="

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c2

    sget-boolean v17, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v17, :cond_bf

    const-string/jumbo v17, "FlipFont"

    const-string/jumbo v18, "**Signature is correct**"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    const/16 v17, 0x0

    return v17

    :cond_c2
    sget-boolean v17, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v17, :cond_cf

    const-string/jumbo v17, "FlipFont"

    const-string/jumbo v18, "**Signature is incorrect**"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_cf} :catch_d2

    :cond_cf
    const/16 v17, 0x1

    return v17

    :catch_d2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v6, 0x0

    :try_start_dc
    const-string/jumbo v17, "X509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_e2
    .catch Ljava/security/cert/CertificateException; {:try_start_dc .. :try_end_e2} :catch_1d9

    move-result-object v6

    :goto_e3
    const/4 v3, 0x0

    :try_start_e4
    invoke-virtual {v6, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_ed
    .catch Ljava/security/cert/CertificateException; {:try_start_e4 .. :try_end_ed} :catch_1df

    :goto_ed
    sget-boolean v17, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v17, :cond_1b6

    if-eqz v3, :cond_1b6

    const-string/jumbo v17, "Example"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "APK name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "Example"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Certificate for: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "Example"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Certificate issued by: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "Example"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "The certificate is valid from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "Example"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Certificate SN# "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "Example"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Generated with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b6
    const-string/jumbo v5, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    if-eqz v3, :cond_1e5

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e5

    sget-boolean v17, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v17, :cond_1d6

    const-string/jumbo v17, "FlipFont"

    const-string/jumbo v18, "**Certificate data is correct**"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d6
    const/16 v17, 0x0

    return v17

    :catch_1d9
    move-exception v9

    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_e3

    :catch_1df
    move-exception v9

    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_ed

    :cond_1e5
    const/16 v17, 0x1

    return v17

    :catch_1e8
    move-exception v10

    goto/16 :goto_77
.end method

.method protected dismissApp()V
    .registers 4

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "FlipFont"

    const-string/jumbo v1, "dismissApp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->dismissList()V

    return-void
.end method

.method protected dismissList()V
    .registers 4

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "FlipFont"

    const-string/jumbo v2, "dismissList()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_14

    const-string/jumbo v1, "FlipFont"

    const-string/jumbo v2, "dismissList() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method protected errorDialog(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_a

    return-void

    :cond_a
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/flipfont/FontListPreference$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$12;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "MONOTYPE"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "selectedFont"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected hideList()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    :goto_7
    return-void

    :catch_8
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "FlipFont"

    const-string/jumbo v2, "hideList() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public loadPreferences()V
    .registers 9

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string/jumbo v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "SelectDialogIsActive"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    const-string/jumbo v4, "RebootDialogIsActive"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    const-string/jumbo v4, "SavedClickedItem"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iget v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_61

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "FontListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    :goto_60
    return-void

    :cond_61
    iput v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto :goto_60
.end method

.method public onCancelButtonPressed()V
    .registers 5

    sget-boolean v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "FlipFont"

    const-string/jumbo v3, "onCancelButtonPressed() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v1, :cond_21

    iget v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_21
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-boolean v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v7, :cond_21

    const-string/jumbo v7, "FlipFont"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onClick(DialogInterface dialog, int which) - which = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    iget v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v7, :cond_36

    sget-boolean v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v7, :cond_35

    const-string/jumbo v7, "FlipFont"

    const-string/jumbo v8, "onClick(DialogInterface dialog, int which) - exit "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void

    :cond_36
    sget-boolean v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v7, :cond_43

    const-string/jumbo v7, "FlipFont"

    const-string/jumbo v8, "onClick(DialogInterface dialog, int which) after (which == mPreviousFont) "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/4 v7, -0x2

    if-ne p2, v7, :cond_6a

    sget-boolean v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v7, :cond_53

    const-string/jumbo v7, "FlipFont"

    const-string/jumbo v8, "onClick(DialogInterface dialog, int which) after (which == -2) "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v7, :cond_66

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_66

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    iput-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    :cond_66
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->dismissApp()V

    return-void

    :cond_6a
    const/4 v5, 0x0

    const/4 v3, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    iput p2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v7, :cond_83

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v7, v7, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v8, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_83
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    iget-boolean v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    if-eqz v7, :cond_91

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/flipfont/FontListPreference;->badFontDialog(Ljava/lang/String;)V

    return-void

    :cond_91
    if-ge p2, v11, :cond_13d

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1211d7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    :goto_a3
    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v11}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e3

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "FlipFont"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgName1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/samsung/android/settings/flipfont/FontListPreference$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$3;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    const v8, 0x7f122243

    invoke-virtual {v2, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/flipfont/FontListPreference$4;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$4;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    const v9, 0x7f121327

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/samsung/android/settings/flipfont/FontListPreference$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$5;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1211d6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iget v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput-boolean v11, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    sget-boolean v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v7, :cond_170

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->RebootDialog()V

    :goto_13c
    return-void

    :cond_13d
    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1211d8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v7, :cond_15e

    new-instance v7, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_15e
    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget v8, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v3

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a3

    :cond_170
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->selectDialog()V

    goto :goto_13c
.end method

.method public onDialogClosed(Z)V
    .registers 9

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1211e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v4, 0x14000020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5c

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1211c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    :cond_5c
    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    :cond_63
    return-void
.end method

.method public onOkButtonPressed()Z
    .registers 35

    const/16 v20, 0x0

    const-string/jumbo v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_39
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v6, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    sget-boolean v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "FlipFont"

    const-string/jumbo v6, "**onOkButtonPressed - bad font**"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    const/4 v2, 0x0

    return v2

    :cond_6f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_115

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    :goto_7e
    const-string/jumbo v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_b9

    new-instance v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    new-instance v3, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    if-eqz v29, :cond_ea

    const-string/jumbo v2, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    :cond_ea
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string/jumbo v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    const-string/jumbo v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v29, :cond_2a1

    const-string/jumbo v2, "FontListPreference"

    const-string/jumbo v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_7e

    :cond_11f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/settings/flipfont/Typeface;

    move-result-object v28

    move-object/from16 v27, v29

    const-string/jumbo v2, ".xml"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-lez v24, :cond_141

    const/4 v2, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    :cond_141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const/16 v30, 0x0

    if-eqz v28, :cond_1f0

    const/16 v22, 0x0

    :goto_151
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_1f0

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/samsung/android/settings/flipfont/TypefaceFile;

    :try_start_169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : Application name, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v13, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v23

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0, v2}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_1dc} :catch_1e0

    :goto_1dc
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_151

    :catch_1e0
    move-exception v21

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/flipfont/FontListPreference;->copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    goto :goto_1dc

    :cond_1f0
    if-eqz v20, :cond_238

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ListView;

    if-eqz v31, :cond_210

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v6, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_210
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    sget-boolean v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_220

    const-string/jumbo v2, "FlipFont"

    const-string/jumbo v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f121a9c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->errorDialog(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_238
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    :try_start_25b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v32, "#"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a1
    .catch Ljava/lang/RuntimeException; {:try_start_25b .. :try_end_2a1} :catch_2cf

    :cond_2a1
    :goto_2a1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    sget-boolean v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-nez v2, :cond_3c4

    const-wide/16 v6, 0x64

    :try_start_2ab
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2ae
    .catch Ljava/lang/InterruptedException; {:try_start_2ab .. :try_end_2ae} :catch_2ed

    :goto_2ae
    :try_start_2ae
    invoke-interface {v12}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    invoke-interface {v12, v15}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_2b5
    .catch Landroid/os/RemoteException; {:try_start_2ae .. :try_end_2b5} :catch_3cd

    :goto_2b5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_2f2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "sec_container_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    return v2

    :catch_2cf
    move-exception v19

    const-string/jumbo v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a1

    :catch_2ed
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2ae

    :cond_2f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    const/16 v2, 0x32

    invoke-virtual {v10, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    const/16 v22, 0x1

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_30b
    :goto_30b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v2, "com.android.settings"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_30b

    const-string/jumbo v2, "com.samsung.music"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_30b

    const-string/jumbo v2, "com.sec.android.app.music"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_30b

    const-string/jumbo v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_354

    const-string/jumbo v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_35a

    :cond_354
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_30b

    :cond_35a
    const-string/jumbo v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_354

    const-string/jumbo v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_354

    const-string/jumbo v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_354

    const-string/jumbo v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_354

    const-string/jumbo v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_354

    const-string/jumbo v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_354

    const-string/jumbo v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_354

    const-string/jumbo v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_354

    const-string/jumbo v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_354

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_30b

    :cond_3c4
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->restartLater()V

    const/4 v2, 0x1

    return v2

    :catch_3cd
    move-exception v17

    goto/16 :goto_2b5
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 8

    const v5, 0x7f1211c7

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_bf

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1211c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1f
    const-string/jumbo v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FontListPreference"

    const-string/jumbo v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const-string/jumbo v2, "FontListPreference"

    const-string/jumbo v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "default"

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const-string/jumbo v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    iget v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v2, :cond_9e

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    :cond_9e
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    sget-boolean v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz v2, :cond_117

    new-instance v2, Lcom/samsung/android/settings/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$1;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_be
    :goto_be
    return-void

    :cond_bf
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1f

    :cond_cd
    const-string/jumbo v2, "FontListPreference"

    const-string/jumbo v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const-string/jumbo v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_117
    new-instance v2, Lcom/samsung/android/settings/flipfont/FontListPreference$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$2;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_be
.end method

.method public restartLater()V
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_d
    return-void
.end method

.method public restartNow()V
    .registers 7

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.REBOOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "nowait"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "interval"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "window"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    :goto_1d
    const/16 v3, 0x14

    if-ge v2, v3, :cond_25

    iget-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    if-nez v3, :cond_2b

    :cond_25
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2b
    const-wide/16 v4, 0x1f4

    :try_start_2d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_33

    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_30
.end method

.method protected savePreferences()V
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "RebootDialogIsActive"

    iget-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "SavedClickedItem"

    iget v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "flip_font_style"

    iget v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public selectDialog()V
    .registers 12

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-boolean v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v6, :cond_7

    return-void

    :cond_7
    iput-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->loadPreferences()V

    iget v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iget v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    if-ge v6, v9, :cond_36

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1211d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    :goto_26
    sget-boolean v6, Lcom/samsung/android/settings/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    if-eqz v6, :cond_61

    iput-boolean v10, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    move-result v6

    if-nez v6, :cond_5e

    return-void

    :cond_36
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1211d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v6, :cond_55

    const-string/jumbo v2, ""

    :goto_4c
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v10

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    :cond_55
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    :cond_5e
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->dismissApp()V

    :cond_61
    sget-boolean v6, Lcom/samsung/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v6, :cond_c3

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_74
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/samsung/android/settings/flipfont/FontListPreference$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$6;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/flipfont/FontListPreference$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$7;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    const v8, 0x1040009

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/flipfont/FontListPreference$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$8;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->hideList()V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1211d6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    return-void

    :cond_c3
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1211de

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_74
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "FlipFont"

    const-string/jumbo v1, "showDialog  (AlertDialog.Builder builder)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_20

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_20
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_58
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_67

    const v0, 0x7f1211d5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    :cond_67
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->loadPreferences()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_7b

    if-eqz p1, :cond_7b

    iput-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->selectDialog()V

    :cond_7b
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v0, :cond_89

    if-eqz p1, :cond_89

    iput-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->RebootDialog()V

    :cond_89
    return-void
.end method
