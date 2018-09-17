.class public Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "HighContrastKeyboardPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static SAMSUNG_KEYPAD_HIGH_CONTRAST_SETTINGS_ACTIVITY:Ljava/lang/String;

.field private static SAMSUNG_KEYPAD_INPUT_METHOD_ID:Ljava/lang/String;

.field private static SAMSUNG_KEYPAD_LABEL:Ljava/lang/String;

.field private static SAMSUNG_KEYPAD_PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->isOneHandInputKeyboardEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->isOneHandModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->putDoNotShowStatusToKeyboard(I)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->putStringTokeyboard(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;Landroid/support/v7/preference/Preference;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->showExclusiveDialog(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;Landroid/support/v7/preference/Preference;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_INPUT_METHOD_ID:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_HIGH_CONTRAST_SETTINGS_ACTIVITY:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_LABEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->loadSamsungKeyboardConstants()V

    return-void
.end method

.method private static getStringFromkeyboard(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string/jumbo v8, ""

    const/4 v6, 0x0

    :try_start_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_22

    :goto_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_2a
    .catchall {:try_start_4 .. :try_end_20} :catchall_33

    move-result-object v8

    goto :goto_13

    :cond_22
    if-eqz v6, :cond_27

    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-object v8

    :catch_28
    move-exception v7

    goto :goto_27

    :catch_2a
    move-exception v7

    if-eqz v6, :cond_27

    :try_start_2d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_27

    :catch_31
    move-exception v7

    goto :goto_27

    :catchall_33
    move-exception v0

    if-eqz v6, :cond_39

    :try_start_36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    :cond_39
    :goto_39
    throw v0

    :catch_3a
    move-exception v7

    goto :goto_39
.end method

.method private getSummaryFromKeyboard()Ljava/lang/String;
    .registers 12

    const/4 v10, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "high_contrast_theme_name"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v6, 0x0

    :try_start_b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5f

    :cond_21
    :goto_21
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_21

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_21

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    const-string/jumbo v0, "NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "high_contrast_theme_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "VALUE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5d} :catch_65
    .catchall {:try_start_b .. :try_end_5d} :catchall_6c

    move-result-object v10

    goto :goto_21

    :cond_5f
    if-eqz v6, :cond_64

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_64
    :goto_64
    return-object v10

    :catch_65
    move-exception v7

    if-eqz v6, :cond_64

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_64

    :catchall_6c
    move-exception v0

    if-eqz v6, :cond_72

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_72
    throw v0
.end method

.method private hasHighContrastThemePicker(Landroid/content/Context;)Z
    .registers 16

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz p1, :cond_13

    const-string/jumbo v0, ""

    sget-object v1, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_PACKAGE_NAME:Ljava/lang/String;

    if-nez v0, :cond_14

    :cond_13
    return v13

    :cond_14
    const-string/jumbo v6, "has_high_contrast_theme_picker"

    const/4 v11, 0x0

    new-array v4, v12, [Ljava/lang/String;

    aput-object v6, v4, v13

    const/4 v7, 0x0

    :try_start_1d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_6c

    :cond_31
    :goto_31
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo v0, "NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const/4 v0, -0x1

    if-eq v9, v0, :cond_31

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_31

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_31

    const-string/jumbo v0, "NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "VALUE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_6a} :catch_75
    .catchall {:try_start_1d .. :try_end_6a} :catchall_7c

    move-result v11

    goto :goto_31

    :cond_6c
    if-eqz v7, :cond_71

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_71
    :goto_71
    if-ne v11, v12, :cond_83

    move v0, v12

    :goto_74
    return v0

    :catch_75
    move-exception v8

    if-eqz v7, :cond_71

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_71

    :catchall_7c
    move-exception v0

    if-eqz v7, :cond_82

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_82
    throw v0

    :cond_83
    move v0, v13

    goto :goto_74
.end method

.method private isOneHandInputKeyboardEnabled()Z
    .registers 10

    const/4 v8, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "use_one_hand_operation"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v6, 0x0

    :try_start_b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_51

    :cond_21
    :goto_21
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string/jumbo v0, "NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "use_one_hand_operation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "VALUE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4c} :catch_62
    .catchall {:try_start_b .. :try_end_4c} :catchall_7d

    move-result v0

    if-eqz v0, :cond_21

    const/4 v8, 0x1

    goto :goto_21

    :cond_51
    if-eqz v6, :cond_56

    :try_start_53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    :cond_56
    :goto_56
    return v8

    :catch_57
    move-exception v7

    const-string/jumbo v0, "HighContrastKeyboardPreferenceController"

    const-string/jumbo v1, "Exception caught while closing cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :catch_62
    move-exception v7

    :try_start_63
    const-string/jumbo v0, "HighContrastKeyboardPreferenceController"

    const-string/jumbo v1, "Exception caught while fetching value of use_one_hand_operation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_7d

    if-eqz v6, :cond_56

    :try_start_6e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_56

    :catch_72
    move-exception v7

    const-string/jumbo v0, "HighContrastKeyboardPreferenceController"

    const-string/jumbo v1, "Exception caught while closing cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :catchall_7d
    move-exception v0

    if-eqz v6, :cond_83

    :try_start_80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84

    :cond_83
    :goto_83
    throw v0

    :catch_84
    move-exception v7

    const-string/jumbo v1, "HighContrastKeyboardPreferenceController"

    const-string/jumbo v2, "Exception caught while closing cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83
.end method

.method private isOneHandModeEnabled()Z
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "interactionarea_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private loadSamsungKeyboardConstants()V
    .registers 7

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_INPUT_METHOD_ID:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_PACKAGE_NAME:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_LABEL:Ljava/lang/String;

    :cond_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".implement.setting.HighContrastThemeSettings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_HIGH_CONTRAST_SETTINGS_ACTIVITY:Ljava/lang/String;

    return-void
.end method

.method private needAccFeatureConfirmDialog()Z
    .registers 14

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v0, "high_contrast_dialog_checkbox_status"

    aput-object v0, v4, v11

    const/4 v6, 0x0

    :try_start_b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5f

    :cond_21
    :goto_21
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_21

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_21

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    const-string/jumbo v0, "NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "high_contrast_dialog_checkbox_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "VALUE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5d} :catch_68
    .catchall {:try_start_b .. :try_end_5d} :catchall_6f

    move-result v10

    goto :goto_21

    :cond_5f
    if-eqz v6, :cond_64

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_64
    :goto_64
    if-ne v10, v12, :cond_76

    move v0, v11

    :goto_67
    return v0

    :catch_68
    move-exception v7

    if-eqz v6, :cond_64

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_64

    :catchall_6f
    move-exception v0

    if-eqz v6, :cond_75

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_75
    throw v0

    :cond_76
    move v0, v12

    goto :goto_67
.end method

.method private putDoNotShowStatusToKeyboard(I)V
    .registers 7

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "high_contrast_dialog_checkbox_status"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "high_contrast_dialog_checkbox_status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static putStringTokeyboard(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string/jumbo v2, "HighContrastKeyboardPreferenceController"

    const-string/jumbo v3, "putStringTokeyboard couldn\'t be executed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
    .registers 11

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f1200a1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f121c57

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d001f

    invoke-virtual {v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v4, 0x7f0a028e

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;

    invoke-direct {v5, p0, v0, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;Landroid/widget/CheckBox;Landroid/support/v7/preference/Preference;)V

    const v6, 0x7f1208ab

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$2;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$3;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$3;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showExclusiveDialog(Landroid/support/v7/preference/Preference;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12009e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12009d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$4;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;Landroid/support/v7/preference/Preference;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$5;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$6;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/Preference;Z)V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_12

    move-object v1, p1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->getSummaryFromKeyboard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_11
    return-void

    :cond_12
    move-object v1, p1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    const-string/jumbo v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_LABEL:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f1200a0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_41
    const v1, 0x7f12009f

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_11
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "high_keyboard_contrast_preference_screen"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->hasHighContrastThemePicker(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v3, "high_keyboard_contrast_preference_screen"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    if-eqz v1, :cond_21

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->needAccFeatureConfirmDialog()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V

    return v6

    :cond_21
    if-eqz v1, :cond_70

    const-string/jumbo v0, "1"

    :goto_26
    const-string/jumbo v3, "HighContrastKeyboardPreferenceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "High Contrast Keyboard is toggled value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isOneHandModeEnabled() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->isOneHandModeEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and oneHandInputKeyboard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->isOneHandInputKeyboardEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->isOneHandModeEnabled()Z

    move-result v3

    if-nez v3, :cond_6a

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->isOneHandInputKeyboardEnabled()Z

    move-result v3

    if-eqz v3, :cond_74

    :cond_6a
    if-eqz v1, :cond_74

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->showExclusiveDialog(Landroid/support/v7/preference/Preference;)V

    :goto_6f
    return v6

    :cond_70
    const-string/jumbo v0, "0"

    goto :goto_26

    :cond_74
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string/jumbo v5, "high_contrast_keyboard"

    invoke-static {v3, v4, v5, v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->putStringTokeyboard(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;Z)V

    if-eqz v1, :cond_93

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "HCKB"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_99

    const/16 v2, 0x3e8

    :cond_99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x12e

    const/16 v5, 0x136a

    invoke-static {v3, v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    goto :goto_6f

    :cond_a5
    return v2
.end method

.method public updateRawDataToIndex(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_7

    return-void

    :cond_7
    const-string/jumbo v5, "HighContrastKeyboardPreferenceController"

    const-string/jumbo v6, "High contrast keyboard::updateRawDataToIndex()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string/jumbo v7, "high_contrast_keyboard"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->getStringFromkeyboard(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v5, 0x7f1200a1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo v4, ""

    if-eqz v1, :cond_5f

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->getSummaryFromKeyboard()Ljava/lang/String;

    move-result-object v4

    :goto_57
    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5f
    if-eqz v3, :cond_72

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    const v5, 0x7f1200a0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_57

    :cond_72
    const v5, 0x7f12009f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_57
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_PACKAGE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_HIGH_CONTRAST_SETTINGS_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->SAMSUNG_KEYPAD_INPUT_METHOD_ID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string/jumbo v5, "high_contrast_keyboard"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->getStringFromkeyboard(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object v3, p1

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;Z)V

    return-void
.end method
