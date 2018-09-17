.class public Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;
.super Ljava/lang/Object;
.source "AssistantMenuUIAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    }
.end annotation


# static fields
.field static tempCnt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->tempCnt:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
