.class public Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationMediaTemplateViewWrapper.java"


# instance fields
.field mActions:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method private resolveViews()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102036e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActions:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public isDimmable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->resolveViews()V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method protected updateTransformedTypes()V
    .registers 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActions:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActions:Landroid/view/View;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_f
    return-void
.end method
