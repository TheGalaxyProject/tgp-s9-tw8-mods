.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;
.super Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.source "CalendarEventPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

.field private mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

.field private mHolder:Landroid/widget/FrameLayout;

.field private mInformationAreaView:Landroid/view/View;

.field private mListRootView:Landroid/view/View;

.field private mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

.field private mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateListViewLayout()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateNoEventsLayout()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$1;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    return-void
.end method

.method private init()V
    .registers 2

    const v0, 0x7f0a049c

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "time"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {p1, v1, v4}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateDate()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->updateDay()V

    :cond_9
    return-void
.end method

.method private updateListViewLayout()V
    .registers 6

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    if-nez v3, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_10

    return-void

    :cond_10
    iget v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    sget-boolean v3, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-nez v3, :cond_26

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mIsMKeyboardConnected:Z

    if-nez v3, :cond_23

    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_26

    :cond_23
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_26
    :goto_26
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2c
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getEventCnt()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_62

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_47
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_26

    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_47

    :pswitch_56
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_47

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_56
    .end packed-switch
.end method

.method private updateNoEventsLayout()V
    .registers 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v1, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-nez v1, :cond_2b

    if-eqz v0, :cond_2b

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mIsMKeyboardConnected:Z

    if-nez v1, :cond_24

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2b

    :cond_24
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getEventCnt()I

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_42
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateViewStyleOnWhiteWallpaper()V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->setVisibility(I)V

    :cond_58
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_61
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4e
.end method

.method private updateViewStyleOnWhiteWallpaper()V
    .registers 4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->updateViewStyleOnWhiteWallpaper()V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    if-eqz v0, :cond_28

    const v1, 0x7f0805aa

    :goto_22
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_27
    return-void

    :cond_28
    const v1, 0x7f0805a9

    goto :goto_22
.end method

.method private updateViews()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo()V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->updateViews()V

    :cond_12
    return-void
.end method


# virtual methods
.method protected closeWindow()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v1, :cond_12

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->setOutOfBoundItemsVisibility(Landroid/graphics/Rect;I)V

    :cond_12
    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->closeWindow()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_22

    sget-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DP Touch up start service box"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->showServiceBox()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_21
    return v2

    :cond_22
    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected getContentsView(I)Landroid/view/View;
    .registers 6

    const v0, 0x7f0d01a5

    packed-switch p1, :pswitch_data_1c

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_14
    const v0, 0x7f0d01a3

    goto :goto_6

    :pswitch_18
    const v0, 0x7f0d01a4

    goto :goto_6

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "servicebox_calendar"

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0479

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    const v1, 0x7f0a047b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    const v1, 0x7f0a047a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->setStatusCallback(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    :cond_34
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0490

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->setStatusCallback(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    :cond_50
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0496

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateNoEventsLayout()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateListViewLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateDate()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateViews()V

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->init()V

    return-void
.end method

.method protected prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "servicebox_event_list"

    new-instance v1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-direct {v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setClipFace(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-void
.end method

.method public refreshViews(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateDate()V

    return-void
.end method
