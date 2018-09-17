.class public Lcom/android/settings/notification/ZenModeScheduleDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeScheduleDaysSelection.java"


# static fields
.field public static final DAYS:[I


# instance fields
.field private mDayFormat:Ljava/text/SimpleDateFormat;

.field private final mDays:Landroid/util/SparseBooleanArray;

.field private mDaysCheckBox:[Landroid/widget/CheckBox;

.field private mDisableListeners:Z

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[I
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .registers 19

    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "EEEE"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    const/16 v11, 0x8

    new-array v11, v11, [Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070966

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070967

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    div-int/lit8 v12, v9, 0x2

    invoke-virtual {v11, v4, v12, v4, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_5d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_7b

    const/4 v5, 0x0

    :goto_69
    move-object/from16 v0, p2

    array-length v11, v0

    if-ge v5, v11, :cond_7b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    aget v12, p2, v5

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_7b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "EEEE"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isChinaHKTWLocale(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_a1

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "EEE"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    :cond_a1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v5, 0x0

    :goto_aa
    sget-object v11, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v11, v11

    if-ge v5, v11, :cond_14b

    sget-object v11, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v3, v11, v5

    move v10, v5

    const v11, 0x7f0d03ce

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v6, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v11, 0x7f0a0215

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_db

    const v11, 0x7f0a021a

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_db
    const v11, 0x7f0a0219

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    new-instance v11, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)V

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v5, :cond_128

    const/4 v11, 0x7

    invoke-virtual {v1, v11, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v11, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3, v10}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;-><init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;II)V

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_118
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    aput-object v2, v11, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_aa

    :cond_128
    const v11, 0x7f120290

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setText(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v11

    if-eqz v11, :cond_140

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v11

    array-length v11, v11

    const/4 v12, 0x7

    if-lt v11, v12, :cond_140

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_140
    new-instance v11, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;-><init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;I)V

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_118

    :cond_14b
    return-void
.end method

.method private getDays()[I
    .registers 6

    new-instance v2, Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_c
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2a

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_25

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_25
    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_22

    :cond_2a
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    new-array v3, v4, [I

    const/4 v1, 0x0

    :goto_31
    array-length v4, v3

    if-ge v1, v4, :cond_3d

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_3d
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    return-object v3
.end method

.method public static getDaysOfWeekForLocale(Ljava/util/Calendar;)[I
    .registers 6

    const/4 v4, 0x7

    new-array v1, v4, [I

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    const/4 v2, 0x0

    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_15

    if-le v0, v4, :cond_e

    const/4 v0, 0x1

    :cond_e
    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    return-object v1
.end method


# virtual methods
.method protected onChanged([I)V
    .registers 2

    return-void
.end method
