.class Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$1;
.super Ljava/lang/Object;
.source "OpacitySeekBarPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

.field final synthetic val$defaultProgress:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;I)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

    iput p2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$1;->val$defaultProgress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$1;->val$defaultProgress:I

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

    iget-boolean v2, v2, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mIsLongkeyProcessing:Z

    if-eqz v2, :cond_25

    if-lez v1, :cond_25

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setOpacityLevel(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->-get0(Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;)Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setProgress(I)V

    const-wide/16 v2, 0xc8

    :try_start_1c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_2

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_25
    return-void
.end method
