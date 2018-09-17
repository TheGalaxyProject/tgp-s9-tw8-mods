.class public final Lcom/android/settings/applications/assist/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;,
        Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;,
        Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;
    }
.end annotation


# instance fields
.field final mAvailableInteractionInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableRecognition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableRecognizerInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableVoiceInteractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurrentRecognizer:Landroid/content/ComponentName;

.field mCurrentVoiceInteraction:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/16 v3, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.service.voice.VoiceInteractionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableVoiceInteractions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognition:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public buildUi()V
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "voice_interaction_service"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_b5

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    :goto_25
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableVoiceInteractions:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v20

    const/4 v11, 0x0

    :goto_35
    move/from16 v0, v20

    if-ge v11, v0, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableVoiceInteractions:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    new-instance v12, Landroid/service/voice/VoiceInteractionServiceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v12}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_bf

    const-string/jumbo v22, "VoiceInteractionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Error in VoiceInteractionService "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b2
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    :cond_b5
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    goto/16 :goto_25

    :cond_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v12}, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v22, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v12}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "voice_recognition_service"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_1e5

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    :goto_124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognition:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v20

    const/4 v11, 0x0

    :goto_12f
    move/from16 v0, v20

    if-ge v11, v0, :cond_280

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognition:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    const/4 v15, 0x0

    const/16 v18, 0x0

    :try_start_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string/jumbo v23, "android.speech"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    if-nez v15, :cond_1ef

    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "No android.speech meta-data for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_1a8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16f .. :try_end_1a8} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_1a8} :catch_233
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16f .. :try_end_1a8} :catch_264
    .catchall {:try_start_16f .. :try_end_1a8} :catchall_279

    :catch_1a8
    move-exception v10

    :try_start_1a9
    const-string/jumbo v22, "VoiceInputHelper"

    const-string/jumbo v23, "error parsing recognition service meta-data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b6
    .catchall {:try_start_1a9 .. :try_end_1b6} :catchall_279

    if-eqz v15, :cond_1bb

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1bb
    :goto_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_12f

    :cond_1e5
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    goto/16 :goto_124

    :cond_1ef
    :try_start_1ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v16

    invoke-static {v15}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    :cond_207
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_21b

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_207

    :cond_21b
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v22, "recognition-service"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_248

    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v23, "Meta-data does not start with recognition-service tag"

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_233
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ef .. :try_end_233} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_233} :catch_233
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1ef .. :try_end_233} :catch_264
    .catchall {:try_start_1ef .. :try_end_233} :catchall_279

    :catch_233
    move-exception v9

    :try_start_234
    const-string/jumbo v22, "VoiceInputHelper"

    const-string/jumbo v23, "error parsing recognition service meta-data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_241
    .catchall {:try_start_234 .. :try_end_241} :catchall_279

    if-eqz v15, :cond_1bb

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1bb

    :cond_248
    :try_start_248
    sget-object v22, Lcom/android/internal/R$styleable;->RecognitionService:[I

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_25d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_248 .. :try_end_25d} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_25d} :catch_233
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_248 .. :try_end_25d} :catch_264
    .catchall {:try_start_248 .. :try_end_25d} :catchall_279

    if-eqz v15, :cond_1bb

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1bb

    :catch_264
    move-exception v8

    :try_start_265
    const-string/jumbo v22, "VoiceInputHelper"

    const-string/jumbo v23, "error parsing recognition service meta-data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_272
    .catchall {:try_start_265 .. :try_end_272} :catchall_279

    if-eqz v15, :cond_1bb

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1bb

    :catchall_279
    move-exception v22

    if-eqz v15, :cond_27f

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_27f
    throw v22

    :cond_280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
