.class public Lcom/android/settings/applications/assist/DefaultAssistPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultAssistPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;,
        Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;
    }
.end annotation


# static fields
.field private static final ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

.field private static final ASSIST_SERVICE_PROBE:Landroid/content/Intent;


# instance fields
.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAvailableAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/assist/DefaultAssistPicker;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->onRadioButtonConfirmed(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    return-void
.end method

.method private addAssistActivities()V
    .registers 10

    iget-object v4, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v4}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v4, Lcom/android/settings/applications/assist/DefaultAssistPicker;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    const/high16 v5, 0x10000

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    new-instance v5, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_36
    return-void
.end method

.method private addAssistServices()V
    .registers 11

    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v5}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v5, Lcom/android/settings/applications/assist/DefaultAssistPicker;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    const/16 v6, 0x80

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, v0, v5}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    new-instance v6, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v4}, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_43
    return-void
.end method

.method private findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;
    .registers 5

    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    iget-object v2, v0, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_1f
    const/4 v2, 0x0

    return-object v2
.end method

.method private getDefaultRecognizer()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v1}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_27

    :cond_1a
    const-string/jumbo v1, "DefaultAssistPicker"

    const-string/jumbo v2, "Unable to resolve default voice recognition service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1

    :cond_27
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setAssistActivity(Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assistant"

    iget-object v2, p1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setAssistNone()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assistant"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setAssistService(Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;)V
    .registers 7

    iget-object v2, p1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_interaction_service"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_recognition_service"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/defaultapps/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->addAssistServices()V

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->addAssistActivities()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    iget-object v5, v1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    iget-object v6, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v7, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mUserId:I

    iget-object v8, v1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_45
    return-object v0
.end method

.method protected bridge synthetic getConfirmationMessage(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getConfirmationMessage(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConfirmationMessage(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12024c

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConfirmationTitle(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12024f

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAssist()Landroid/content/ComponentName;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_15

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v3, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mUserId:I

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-virtual {v1}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_15
    return-object v1
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x34b

    return v0
.end method

.method protected newAssistConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;->newInstance(Lcom/android/settings/applications/assist/DefaultAssistPicker;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xf3a

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .registers 9

    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getCandidate(Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getConfirmationMessage(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getCandidate(Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getConfirmationTitle(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    if-eqz v0, :cond_21

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->newAssistConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string/jumbo v6, "DefaultAppConfirm"

    invoke-virtual {v3, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public sendSALogging()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b018c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_1d
    const-string/jumbo v1, "none"

    goto :goto_a
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->setAssistNone()V

    return v6

    :cond_b
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    move-result-object v1

    if-nez v1, :cond_1d

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->setAssistNone()V

    return v6

    :cond_1d
    sget-boolean v2, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "DAAU"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    invoke-virtual {v1}, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->isVoiceInteractionService()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-direct {p0, v1}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->setAssistService(Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;)V

    :goto_3b
    return v6

    :cond_3c
    invoke-direct {p0, v1}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->setAssistActivity(Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;)V

    goto :goto_3b
.end method

.method protected setDescriptionText()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a84

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected shouldShowItemNone()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
