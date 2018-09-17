.class public Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;
.super Landroid/widget/LinearLayout;
.source "ZenScheduleRepeatButtonAndDescription.java"


# instance fields
.field private mRepeatButton:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->init()V

    return-void
.end method

.method private init()V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d03cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->addView(Landroid/view/View;)V

    const v2, 0x7f0a01e9

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mRepeatButton:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    const v2, 0x7f0a0283

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription$1;-><init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getRepeatButtonHeight()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mRepeatButton:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRepeatButtonLocationOnScreen([I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mRepeatButton:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getLocationOnScreen([I)V

    return-void
.end method

.method public getRepeatButtonWidth()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mRepeatButton:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getWidth()I

    move-result v0

    return v0
.end method

.method public initRepeatButton([I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mRepeatButton:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->initRepeatBtn([I)V

    return-void
.end method

.method public isDragging()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mRepeatButton:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    iget-boolean v0, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDragging:Z

    return v0
.end method

.method public onTouchRepeatButton(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mRepeatButton:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public setEnabledButton(Z)V
    .registers 4

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_9
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mRepeatButton:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setEnabledBtn(Ljava/lang/Boolean;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mView:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_9
.end method

.method public setRepeatListener(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->mRepeatButton:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setOnRepeatClickListener(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;)V

    return-void
.end method
