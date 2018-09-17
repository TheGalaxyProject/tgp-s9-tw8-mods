.class public Lcom/sec/ims/settings/ImsProfile;
.super Ljava/lang/Object;
.source "ImsProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/settings/ImsProfile$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-sec-ims-extensions-TelephonyManagerExt$NetworkTypeExtSwitchesValues:[I = null

.field public static final AUDIO_CAPABILITIES_NB_ONLY:I = 0x3

.field public static final AUDIO_CAPABILITIES_NB_PREF:I = 0x1

.field public static final AUDIO_CAPABILITIES_WB_ONLY:I = 0x2

.field public static final AUDIO_CAPABILITIES_WB_PREF:I = 0x0

.field public static final AUDIO_CODEC_BANDWIDTH_EFFICIENT:I = 0x0

.field public static final AUDIO_CODEC_BANDWIDTH_PREF:I = 0x2

.field public static final AUDIO_CODEC_MANUAL:I = 0x4

.field public static final AUDIO_CODEC_OCTET_ALIGNED:I = 0x1

.field public static final AUDIO_CODEC_OCTET_ALIGNED_PREF:I = 0x3

.field public static final AUTOCONFIG_NEEDED:I = 0x1

.field public static final AUTOCONFIG_NEEDED_PARTIALLY:I = 0x2

.field public static final AUTOCONFIG_NOT_NEEDED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DEFAULT_DEREG_TIMEOUT:I = 0xfa0

.field public static final DTMF_CODEC_ENABLED:I = 0x0

.field public static final DTMF_IN_BAND:I = 0x1

.field public static final ENABLE_STATUS_MANUAL:I = 0x1

.field public static final ENABLE_STATUS_OFF:I = 0x0

.field public static final ENABLE_STATUS_ON:I = 0x2

.field public static final GEOLOCATION_IN_PANI:I = 0x1

.field public static final GEOLOCATION_IN_PIDF:I = 0x2

.field public static final GEOLOCATION_IN_PIDF_WITH_CD:I = 0x3

.field public static final IP_TYPE_IPV4:I = 0x1

.field public static final IP_TYPE_IPV4V6:I = 0x3

.field public static final IP_TYPE_IPV6:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "ImsProfile"

.field public static final PCSCF_PREF_AUTOCONF:I = 0x3

.field public static final PCSCF_PREF_AUTOCONF_IF_RCSONLY:I = 0x4

.field public static final PCSCF_PREF_ISIM:I = 0x1

.field public static final PCSCF_PREF_MANUAL:I = 0x2

.field public static final PCSCF_PREF_OMADM:I = 0x5

.field public static final PCSCF_PREF_PCO:I = 0x0

.field public static final PDN_DEFAULT:Ljava/lang/String; = "default"

.field public static final PDN_EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final PDN_IMS:Ljava/lang/String; = "ims"

.field public static final PDN_INTERNET:Ljava/lang/String; = "internet"

.field public static final PDN_WIFI:Ljava/lang/String; = "wifi"

.field public static final PDN_XCAP:Ljava/lang/String; = "xcap"

.field public static final RCS_PROFILE_BB:Ljava/lang/String; = "joyn_blackbird"

.field public static final RCS_PROFILE_CPR:Ljava/lang/String; = "joyn_cpr"

.field public static final RCS_PROFILE_NAGUIDELINES:Ljava/lang/String; = "NAGuidelines"

.field public static final RCS_PROFILE_UP10:Ljava/lang/String; = "UP_1.0"

.field public static final RCS_SERVICE:Ljava/lang/String; = "rcs"

.field public static final REREGI_OFF:I = 0x0

.field public static final REREGI_ON:I = 0x2

.field public static final REREGI_ON_SERVICE_CHANGE:I = 0x1

.field public static final SERVICE_ACCOUNT_AUTH:Ljava/lang/String; = "scab_account_authenticator"

.field public static final SERVICE_CAB:Ljava/lang/String; = "cab"

.field public static final SERVICE_CAPABILITY:Ljava/lang/String; = "capability_tapi"

.field public static final SERVICE_CDPN:Ljava/lang/String; = "cdpn"

.field public static final SERVICE_CHAT:Ljava/lang/String; = "chat_tapi"

.field public static final SERVICE_CHATBOT_COMMUNICATION:Ljava/lang/String; = "chatbot-communication"

.field public static final SERVICE_CHATBOT_ROLE:Ljava/lang/String; = "chatbot-role"

.field public static final SERVICE_CMS:Ljava/lang/String; = "cms"

.field public static final SERVICE_CONTACT:Ljava/lang/String; = "contact_tapi"

.field public static final SERVICE_EC:Ljava/lang/String; = "ec"

.field public static final SERVICE_EUC:Ljava/lang/String; = "euc"

.field public static final SERVICE_FILEUPLOAD:Ljava/lang/String; = "fileupload_tapi"

.field public static final SERVICE_FT:Ljava/lang/String; = "ft"

.field public static final SERVICE_FT_HTTP:Ljava/lang/String; = "ft_http"

.field public static final SERVICE_FT_TAPI:Ljava/lang/String; = "ft_tapi"

.field public static final SERVICE_GLS:Ljava/lang/String; = "gls"

.field public static final SERVICE_GLS_TAPI:Ljava/lang/String; = "gls_tapi"

.field public static final SERVICE_GROUP_NONE:I = 0x0

.field public static final SERVICE_GROUP_RCS:I = 0x2

.field public static final SERVICE_GROUP_VOLTE:I = 0x1

.field public static final SERVICE_GROUP_VOLTE_RCS:I = 0x3

.field public static final SERVICE_HISTORYLOG:Ljava/lang/String; = "historylog_tapi"

.field public static final SERVICE_IM:Ljava/lang/String; = "im"

.field public static final SERVICE_IS:Ljava/lang/String; = "is"

.field public static final SERVICE_ISH:Ljava/lang/String; = "ish_tapi"

.field public static final SERVICE_MMTEL_VOICE:Ljava/lang/String; = "mmtel"

.field public static final SERVICE_MMTEL_VOICE_VIDEO:Ljava/lang/String; = "mmtel-video"

.field public static final SERVICE_MULTIMEDIASESSION:Ljava/lang/String; = "multimediasession_tapi"

.field public static final SERVICE_OPTIONS:Ljava/lang/String; = "options"

.field public static final SERVICE_PRESENCE:Ljava/lang/String; = "presence"

.field public static final SERVICE_PROFILE:Ljava/lang/String; = "profile"

.field public static final SERVICE_SLM:Ljava/lang/String; = "slm"

.field public static final SERVICE_SMSIP:Ljava/lang/String; = "smsip"

.field public static final SERVICE_SS:Ljava/lang/String; = "ss"

.field public static final SERVICE_VS:Ljava/lang/String; = "vs"

.field public static final SERVICE_VSH:Ljava/lang/String; = "vsh_tapi"

.field public static final SERVICE_XDM:Ljava/lang/String; = "xdm"

.field public static final TIMER_NAME_1:Ljava/lang/String; = "1"

.field public static final TIMER_NAME_2:Ljava/lang/String; = "2"

.field public static final TIMER_NAME_4:Ljava/lang/String; = "4"

.field public static final TIMER_NAME_A:Ljava/lang/String; = "A"

.field public static final TIMER_NAME_B:Ljava/lang/String; = "B"

.field public static final TIMER_NAME_C:Ljava/lang/String; = "C"

.field public static final TIMER_NAME_D:Ljava/lang/String; = "D"

.field public static final TIMER_NAME_E:Ljava/lang/String; = "E"

.field public static final TIMER_NAME_F:Ljava/lang/String; = "F"

.field public static final TIMER_NAME_G:Ljava/lang/String; = "G"

.field public static final TIMER_NAME_H:Ljava/lang/String; = "H"

.field public static final TIMER_NAME_I:Ljava/lang/String; = "I"

.field public static final TIMER_NAME_J:Ljava/lang/String; = "J"

.field public static final TIMER_NAME_K:Ljava/lang/String; = "K"

.field public static final TRANSPORT_TCP:I = 0x3

.field public static final TRANSPORT_TLS:I = 0x4

.field public static final TRANSPORT_UDP:I = 0x2

.field public static final TRANSPORT_UDP_PREFERRED:I = 0x1

.field public static final TTY_TYPE_CS:I = 0x1

.field public static final TTY_TYPE_CS_RTT:I = 0x3

.field public static final TTY_TYPE_NONE:I = 0x0

.field public static final TTY_TYPE_PS:I = 0x2

.field public static final TTY_TYPE_PS_RTT:I = 0x4

.field public static final TYPE_MOBILE_XCAP:I = 0x1b

.field public static final VOLTE_SERVICE:Ljava/lang/String; = "volte"

.field protected static final chatServices:[Ljava/lang/String;

.field protected static final rcsServices:[Ljava/lang/String;

.field protected static final sNetworkNameSet:[Ljava/lang/String;

.field protected static final tapiServices:[Ljava/lang/String;

.field protected static final volteServices:[Ljava/lang/String;


# instance fields
.field private mBody:Lorg/json/JSONObject;


# direct methods
.method private static synthetic -getcom-sec-ims-extensions-TelephonyManagerExt$NetworkTypeExtSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->-com-sec-ims-extensions-TelephonyManagerExt$NetworkTypeExtSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->-com-sec-ims-extensions-TelephonyManagerExt$NetworkTypeExtSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->values()[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_1xRTT:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_10d

    :goto_17
    :try_start_17
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_CDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_10a

    :goto_20
    :try_start_20
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_DC:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_107

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EDGE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_33} :catch_104

    :goto_33
    :try_start_33
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EHRPD:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3c} :catch_101

    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_0:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_45} :catch_fe

    :goto_45
    :try_start_45
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_A:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4e} :catch_fb

    :goto_4e
    :try_start_4e
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_B:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_f8

    :goto_58
    :try_start_58
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_GPRS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_61} :catch_f5

    :goto_61
    :try_start_61
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_GSM:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_f2

    :goto_6b
    :try_start_6b
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSDPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_f0

    :goto_75
    :try_start_75
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_ee

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSPAP:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_ec

    :goto_89
    :try_start_89
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSUPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_ea

    :goto_93
    :try_start_93
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_IDEN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_e8

    :goto_9d
    :try_start_9d
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_IWLAN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_e6

    :goto_a7
    :try_start_a7
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_LTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_e4

    :goto_b1
    :try_start_b1
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_TDLTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_e2

    :goto_bb
    :try_start_bb
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_TD_SCDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_e0

    :goto_c5
    :try_start_c5
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_UMTS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_de

    :goto_cf
    :try_start_cf
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_UNKNOWN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_dc

    :goto_d9
    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->-com-sec-ims-extensions-TelephonyManagerExt$NetworkTypeExtSwitchesValues:[I

    return-object v0

    :catch_dc
    move-exception v1

    goto :goto_d9

    :catch_de
    move-exception v1

    goto :goto_cf

    :catch_e0
    move-exception v1

    goto :goto_c5

    :catch_e2
    move-exception v1

    goto :goto_bb

    :catch_e4
    move-exception v1

    goto :goto_b1

    :catch_e6
    move-exception v1

    goto :goto_a7

    :catch_e8
    move-exception v1

    goto :goto_9d

    :catch_ea
    move-exception v1

    goto :goto_93

    :catch_ec
    move-exception v1

    goto :goto_89

    :catch_ee
    move-exception v1

    goto :goto_7f

    :catch_f0
    move-exception v1

    goto :goto_75

    :catch_f2
    move-exception v1

    goto/16 :goto_6b

    :catch_f5
    move-exception v1

    goto/16 :goto_61

    :catch_f8
    move-exception v1

    goto/16 :goto_58

    :catch_fb
    move-exception v1

    goto/16 :goto_4e

    :catch_fe
    move-exception v1

    goto/16 :goto_45

    :catch_101
    move-exception v1

    goto/16 :goto_3c

    :catch_104
    move-exception v1

    goto/16 :goto_33

    :catch_107
    move-exception v1

    goto/16 :goto_2a

    :catch_10a
    move-exception v1

    goto/16 :goto_20

    :catch_10d
    move-exception v1

    goto/16 :goto_17
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "mmtel"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mmtel-video"

    aput-object v1, v0, v4

    const-string/jumbo v1, "smsip"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ss"

    aput-object v1, v0, v6

    const-string/jumbo v1, "cdpn"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->volteServices:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "options"

    aput-object v1, v0, v3

    const-string/jumbo v1, "presence"

    aput-object v1, v0, v4

    const-string/jumbo v1, "im"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ft"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ft_http"

    aput-object v1, v0, v7

    const-string/jumbo v1, "slm"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "is"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "vs"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "euc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "gls"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "profile"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "ec"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->rcsServices:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ft_tapi"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ish_tapi"

    aput-object v1, v0, v4

    const-string/jumbo v1, "vsh_tapi"

    aput-object v1, v0, v5

    const-string/jumbo v1, "capability_tapi"

    aput-object v1, v0, v6

    const-string/jumbo v1, "chat_tapi"

    aput-object v1, v0, v7

    const-string/jumbo v1, "fileupload_tapi"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "gls_tapi"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "multimediasession_tapi"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->tapiServices:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "im"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ft"

    aput-object v1, v0, v4

    const-string/jumbo v1, "slm"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ft_http"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->chatServices:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lte"

    aput-object v1, v0, v3

    const-string/jumbo v1, "hspa"

    aput-object v1, v0, v4

    const-string/jumbo v1, "umts"

    aput-object v1, v0, v5

    const-string/jumbo v1, "gsm"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ehrpd"

    aput-object v1, v0, v7

    const-string/jumbo v1, "tdscdma"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->sNetworkNameSet:[Ljava/lang/String;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/settings/ImsProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->update(Landroid/content/ContentValues;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/settings/ImsProfile;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/settings/ImsProfile;)V
    .registers 3

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method private fromJson(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/sec/ims/settings/ImsProfile;->splitNetwork()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public static getAllNetworkNameSet()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->sNetworkNameSet:[Ljava/lang/String;

    return-object v0
.end method

.method public static getChatServiceList()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->chatServices:[Ljava/lang/String;

    return-object v0
.end method

.method private getNetwork(I)Lorg/json/JSONObject;
    .registers 3

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkName(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->-getcom-sec-ims-extensions-TelephonyManagerExt$NetworkTypeExtSwitchesValues()[I

    move-result-object v0

    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkEnumType(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "lte"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "edge"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "umts"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "gsm"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "tdlte"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "tdscdma"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "cdma"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "ehrpd"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "wifi"

    return-object v0

    :pswitch_39
    const-string/jumbo v0, "hspa"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "hspa+"

    return-object v0

    :pswitch_41
    const-string/jumbo v0, "hsdpa"

    return-object v0

    :pswitch_45
    const-string/jumbo v0, "hsupa"

    return-object v0

    :pswitch_49
    const-string/jumbo v0, "gprs"

    return-object v0

    :pswitch_4d
    const-string/jumbo v0, "1xrtt"

    return-object v0

    :pswitch_51
    const-string/jumbo v0, "evdo_0"

    return-object v0

    :pswitch_55
    const-string/jumbo v0, "evdo_a"

    return-object v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_2d
        :pswitch_19
        :pswitch_31
        :pswitch_51
        :pswitch_55
        :pswitch_49
        :pswitch_21
        :pswitch_41
        :pswitch_39
        :pswitch_3d
        :pswitch_45
        :pswitch_35
        :pswitch_15
        :pswitch_25
        :pswitch_29
        :pswitch_1d
    .end packed-switch
.end method

.method public static getNetworkType(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    const-string/jumbo v1, "LTE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v0, 0xd

    :cond_c
    :goto_c
    return v0

    :cond_d
    const-string/jumbo v1, "EDGE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x2

    goto :goto_c

    :cond_18
    const-string/jumbo v1, "UMTS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v0, 0x3

    goto :goto_c

    :cond_23
    const-string/jumbo v1, "GSM"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/16 v0, 0x10

    goto :goto_c

    :cond_2f
    const-string/jumbo v1, "TDLTE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v0, 0x1f

    goto :goto_c

    :cond_3b
    const-string/jumbo v1, "TDSCDMA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/16 v0, 0x11

    goto :goto_c

    :cond_47
    const-string/jumbo v1, "CDMA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v0, 0x4

    goto :goto_c

    :cond_52
    const-string/jumbo v1, "EHRPD"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/16 v0, 0xe

    goto :goto_c

    :cond_5e
    const-string/jumbo v1, "WIFI"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/16 v0, 0x12

    goto :goto_c

    :cond_6a
    const-string/jumbo v1, "HSPA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/16 v0, 0xa

    goto :goto_c

    :cond_76
    const-string/jumbo v1, "HSPA+"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/16 v0, 0xf

    goto :goto_c

    :cond_82
    const-string/jumbo v1, "HSDPA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    const/16 v0, 0x8

    goto/16 :goto_c

    :cond_8f
    const-string/jumbo v1, "HSUPA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    const/16 v0, 0x9

    goto/16 :goto_c

    :cond_9c
    const-string/jumbo v1, "GPRS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    const/4 v0, 0x1

    goto/16 :goto_c

    :cond_a8
    const-string/jumbo v1, "1XRTT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    const/4 v0, 0x7

    goto/16 :goto_c

    :cond_b4
    const-string/jumbo v1, "EVDO_0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    const/4 v0, 0x5

    goto/16 :goto_c

    :cond_c0
    const-string/jumbo v1, "EVDO_A"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x6

    goto/16 :goto_c
.end method

.method public static getRcsProfile(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfileLoader;->getProfileList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_12

    const-string/jumbo v4, "ImsProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Rcs profile ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4c
    const-string/jumbo v4, ""

    return-object v4
.end method

.method public static getRcsServiceList()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->rcsServices:[Ljava/lang/String;

    return-object v0
.end method

.method public static getTapiServiceList()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->tapiServices:[Ljava/lang/String;

    return-object v0
.end method

.method private getTimer(Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcom/sec/ims/settings/ImsProfile;->getTimerMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private getTimerMap()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v4, "timer"

    invoke-virtual {p0, v4}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-static {v4, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    move v4, v5

    :goto_16
    if-ge v4, v6, :cond_34

    aget-object v1, v2, v4

    const-string/jumbo v7, ":"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_31

    aget-object v7, v3, v5

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_34
    return-object v0
.end method

.method public static getVoLteServiceList()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->volteServices:[Ljava/lang/String;

    return-object v0
.end method

.method private splitNetwork()V
    .registers 16

    const/4 v9, 0x0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :try_start_6
    iget-object v8, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v10, "network"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_61

    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_59

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v8, "type"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-static {v7, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_2c
    if-ge v8, v11, :cond_56

    aget-object v5, v10, v8

    new-instance v6, Lorg/json/JSONObject;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const-string/jumbo v13, "services"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string/jumbo v13, "enabled"

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const-string/jumbo v13, "dereg_timeout"

    const/4 v14, 0x2

    aput-object v13, v12, v14

    invoke-direct {v6, v4, v12}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    const-string/jumbo v12, "type"

    invoke-virtual {v6, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_59
    iget-object v8, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v9, "network"

    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_61} :catch_62

    :cond_61
    :goto_61
    return-void

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_61
.end method

.method protected static trimAudioCodec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 25

    const-string/jumbo v12, ""

    const-string/jumbo v5, ""

    const-string/jumbo v4, ""

    const-string/jumbo v7, ""

    const-string/jumbo v3, ""

    const-string/jumbo v6, ""

    const-string/jumbo v9, ""

    const-string/jumbo v8, ""

    const-string/jumbo v10, ""

    :try_start_1b
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_26} :catch_8a

    move-result v14

    :goto_27
    const-string/jumbo v18, "ImsProfile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "trimAudioCodec : audioCodecMode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " audioCapabilities="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " dtmfCodecMode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Ljava/util/StringTokenizer;

    const-string/jumbo v18, ","

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6b
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_120

    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v18, "AMRBE-WB"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_98

    const-string/jumbo v5, "AMRBE-WB"

    goto :goto_6b

    :catch_8a
    move-exception v15

    const-string/jumbo v18, "ImsProfile"

    const-string/jumbo v19, "trimAudioCodec: Invalid values. Use default."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x2

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto :goto_27

    :cond_98
    const-string/jumbo v18, "AMRBE"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a9

    const-string/jumbo v4, "AMRBE"

    goto :goto_6b

    :cond_a9
    const-string/jumbo v18, "AMR-WB"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ba

    const-string/jumbo v7, "AMR-WB"

    goto :goto_6b

    :cond_ba
    const-string/jumbo v18, "AMR"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_cb

    const-string/jumbo v3, "AMR"

    goto :goto_6b

    :cond_cb
    const-string/jumbo v18, "AMROPEN"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_dc

    const-string/jumbo v6, "AMROPEN"

    goto :goto_6b

    :cond_dc
    const-string/jumbo v18, "DTMFWB"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ee

    const-string/jumbo v9, "DTMFWB"

    goto/16 :goto_6b

    :cond_ee
    const-string/jumbo v18, "DTMF"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_100

    const-string/jumbo v8, "DTMF"

    goto/16 :goto_6b

    :cond_100
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6b

    :cond_120
    const-string/jumbo v18, "ImsProfile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "trimAudioCodec : AMRBE_WB="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " AMRBE="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " AMR-WB="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " AMR="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " DTMFWB="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " DTMF="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " OTHERS="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v13, :pswitch_data_8da

    :pswitch_18d
    packed-switch v11, :pswitch_data_8e6

    move-object v12, v5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_738

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_738

    const-string/jumbo v18, ","

    :goto_1ad
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_73d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_73d

    const-string/jumbo v18, ","

    :goto_1ea
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_742

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_742

    const-string/jumbo v18, ","

    :goto_227
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_248
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_28a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_28a

    const-string/jumbo v18, "ImsProfile"

    const-string/jumbo v19, "Add AMROPEN"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_28a
    packed-switch v14, :pswitch_data_8f0

    const-string/jumbo v18, "ImsProfile"

    const-string/jumbo v19, "trimAudioCodec : DTMF is disabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_296
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    :pswitch_2ac
    packed-switch v11, :pswitch_data_8f6

    move-object v12, v5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_339

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_339

    const-string/jumbo v18, ","

    :goto_2cc
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :pswitch_2ef
    move-object v12, v4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_32f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_32f

    const-string/jumbo v18, ","

    :goto_30c
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :cond_32f
    const-string/jumbo v18, ""

    goto :goto_30c

    :pswitch_333
    move-object v12, v5

    goto/16 :goto_248

    :pswitch_336
    move-object v12, v4

    goto/16 :goto_248

    :cond_339
    const-string/jumbo v18, ""

    goto :goto_2cc

    :pswitch_33d
    packed-switch v11, :pswitch_data_900

    move-object v12, v7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3ca

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_3ca

    const-string/jumbo v18, ","

    :goto_35d
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :pswitch_380
    move-object v12, v3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3c0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_3c0

    const-string/jumbo v18, ","

    :goto_39d
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :cond_3c0
    const-string/jumbo v18, ""

    goto :goto_39d

    :pswitch_3c4
    move-object v12, v7

    goto/16 :goto_248

    :pswitch_3c7
    move-object v12, v3

    goto/16 :goto_248

    :cond_3ca
    const-string/jumbo v18, ""

    goto :goto_35d

    :pswitch_3ce
    packed-switch v11, :pswitch_data_90a

    move-object v12, v7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5da

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_5da

    const-string/jumbo v18, ","

    :goto_3ee
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5df

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_5df

    const-string/jumbo v18, ","

    :goto_42b
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5e4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_5e4

    const-string/jumbo v18, ","

    :goto_468
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :pswitch_48b
    move-object v12, v3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_545

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_545

    const-string/jumbo v18, ","

    :goto_4a8
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_54a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_54a

    const-string/jumbo v18, ","

    :goto_4e5
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_54e

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_54e

    const-string/jumbo v18, ","

    :goto_522
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :cond_545
    const-string/jumbo v18, ""

    goto/16 :goto_4a8

    :cond_54a
    const-string/jumbo v18, ""

    goto :goto_4e5

    :cond_54e
    const-string/jumbo v18, ""

    goto :goto_522

    :pswitch_552
    move-object v12, v7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_592

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_592

    const-string/jumbo v18, ","

    :goto_56f
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :cond_592
    const-string/jumbo v18, ""

    goto :goto_56f

    :pswitch_596
    move-object v12, v3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5d6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_5d6

    const-string/jumbo v18, ","

    :goto_5b3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :cond_5d6
    const-string/jumbo v18, ""

    goto :goto_5b3

    :cond_5da
    const-string/jumbo v18, ""

    goto/16 :goto_3ee

    :cond_5df
    const-string/jumbo v18, ""

    goto/16 :goto_42b

    :cond_5e4
    const-string/jumbo v18, ""

    goto/16 :goto_468

    :pswitch_5e9
    move-object v12, v4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6a3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_6a3

    const-string/jumbo v18, ","

    :goto_606
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6a8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_6a8

    const-string/jumbo v18, ","

    :goto_643
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6ac

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_6ac

    const-string/jumbo v18, ","

    :goto_680
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :cond_6a3
    const-string/jumbo v18, ""

    goto/16 :goto_606

    :cond_6a8
    const-string/jumbo v18, ""

    goto :goto_643

    :cond_6ac
    const-string/jumbo v18, ""

    goto :goto_680

    :pswitch_6b0
    move-object v12, v5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6f0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_6f0

    const-string/jumbo v18, ","

    :goto_6cd
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :cond_6f0
    const-string/jumbo v18, ""

    goto :goto_6cd

    :pswitch_6f4
    move-object v12, v4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_734

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_734

    const-string/jumbo v18, ","

    :goto_711
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_248

    :cond_734
    const-string/jumbo v18, ""

    goto :goto_711

    :cond_738
    const-string/jumbo v18, ""

    goto/16 :goto_1ad

    :cond_73d
    const-string/jumbo v18, ""

    goto/16 :goto_1ea

    :cond_742
    const-string/jumbo v18, ""

    goto/16 :goto_227

    :pswitch_747
    packed-switch v11, :pswitch_data_914

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8d0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_8d0

    const-string/jumbo v18, ","

    :goto_766
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8d5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_8d5

    const-string/jumbo v18, ","

    :goto_7a3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_296

    :pswitch_7c6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_842

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_842

    const-string/jumbo v18, ","

    :goto_7e2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_846

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_846

    const-string/jumbo v18, ","

    :goto_81f
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_296

    :cond_842
    const-string/jumbo v18, ""

    goto :goto_7e2

    :cond_846
    const-string/jumbo v18, ""

    goto :goto_81f

    :pswitch_84a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_889

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_889

    const-string/jumbo v18, ","

    :goto_866
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_296

    :cond_889
    const-string/jumbo v18, ""

    goto :goto_866

    :pswitch_88d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8cc

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_8cc

    const-string/jumbo v18, ","

    :goto_8a9
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_296

    :cond_8cc
    const-string/jumbo v18, ""

    goto :goto_8a9

    :cond_8d0
    const-string/jumbo v18, ""

    goto/16 :goto_766

    :cond_8d5
    const-string/jumbo v18, ""

    goto/16 :goto_7a3

    :pswitch_data_8da
    .packed-switch 0x0
        :pswitch_2ac
        :pswitch_33d
        :pswitch_18d
        :pswitch_3ce
    .end packed-switch

    :pswitch_data_8e6
    .packed-switch 0x1
        :pswitch_5e9
        :pswitch_6b0
        :pswitch_6f4
    .end packed-switch

    :pswitch_data_8f0
    .packed-switch 0x0
        :pswitch_747
    .end packed-switch

    :pswitch_data_8f6
    .packed-switch 0x1
        :pswitch_2ef
        :pswitch_333
        :pswitch_336
    .end packed-switch

    :pswitch_data_900
    .packed-switch 0x1
        :pswitch_380
        :pswitch_3c4
        :pswitch_3c7
    .end packed-switch

    :pswitch_data_90a
    .packed-switch 0x1
        :pswitch_48b
        :pswitch_552
        :pswitch_596
    .end packed-switch

    :pswitch_data_914
    .packed-switch 0x1
        :pswitch_7c6
        :pswitch_84a
        :pswitch_88d
    .end packed-switch
.end method


# virtual methods
.method public addImpu(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    return-void
.end method

.method public clone()Lcom/sec/ims/settings/ImsProfile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->clone()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enable(I)V
    .registers 4

    const-string/jumbo v0, "enabled"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_11
    return v3

    :cond_12
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v3

    :cond_19
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAsContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getAsContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get100tryingTimer()I
    .registers 2

    const-string/jumbo v0, "timer_100trying"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAddHistinfo()Z
    .registers 2

    const-string/jumbo v0, "add_histinfo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAllServiceSet()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iget-object v7, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v8, "network"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_6e

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_6e

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v7, "services"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_45

    const-string/jumbo v7, "ImsProfile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAllServiceSet: No services array in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_45
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    :goto_4b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_5b

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_5b
    const-string/jumbo v7, "type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_6e
    return-object v4
.end method

.method public getAllServiceSetFromAllNetwork()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iget-object v6, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v7, "network"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_56

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_56

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v6, "services"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_45

    const-string/jumbo v6, "ImsProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAllServiceSetFromAllNetwork: No services array in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_45
    const/4 v1, 0x0

    :goto_46
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_42

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_56
    return-object v4
.end method

.method public getAmrnbMode()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "amrnb_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmrnbbeMaxRed()I
    .registers 2

    const-string/jumbo v0, "amrnbbe_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrnbbePayload()I
    .registers 2

    const-string/jumbo v0, "amrnbbe_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrnboaMaxRed()I
    .registers 2

    const-string/jumbo v0, "amrnboa_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrnboaPayload()I
    .registers 2

    const-string/jumbo v0, "amrnboa_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmropenPayload()I
    .registers 2

    const-string/jumbo v0, "amropen_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrwbMode()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "amrwb_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmrwbbeMaxRed()I
    .registers 2

    const-string/jumbo v0, "amrwbbe_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrwbbePayload()I
    .registers 2

    const-string/jumbo v0, "amrwbbe_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrwboaMaxRed()I
    .registers 2

    const-string/jumbo v0, "amrwboa_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrwboaPayload()I
    .registers 2

    const-string/jumbo v0, "amrwboa_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "app_id"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAsContentValues()Landroid/content/ContentValues;
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v4, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_27

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b

    :cond_27
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_31

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_b

    :cond_31
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3b

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_3b
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_47
    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAsJSONObjectList(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1e

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-object v2
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsStringList(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1e

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-object v2
.end method

.method public getAudioAS()I
    .registers 2

    const-string/jumbo v0, "audio_as"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioAvpf()I
    .registers 2

    const-string/jumbo v0, "audio_avpf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioCapabilities()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "audio_capabilities"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "audio_codec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAudioCodecMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAudioCapabilities()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getDtmfCodecMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/ims/settings/ImsProfile;->trimAudioCodec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioCodecMode()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "audio_codec_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioPortEnd()I
    .registers 2

    const-string/jumbo v0, "audio_port_end"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioPortStart()I
    .registers 2

    const-string/jumbo v0, "audio_port_start"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioRR()I
    .registers 2

    const-string/jumbo v0, "audio_rr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioRS()I
    .registers 2

    const-string/jumbo v0, "audio_rs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioRtcpXr()I
    .registers 2

    const-string/jumbo v0, "audio_rtcpxr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioSrtp()I
    .registers 2

    const-string/jumbo v0, "audio_srtp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioVideoTx()I
    .registers 2

    const-string/jumbo v0, "audio_video_tx"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAuthAlgorithm()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "auth_algo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "authname"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailCacheExpiry()I
    .registers 2

    const-string/jumbo v0, "avail_cache_exp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBadEventExpiry()I
    .registers 2

    const-string/jumbo v0, "bad_event_expiry"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCapCacheExp()I
    .registers 2

    const-string/jumbo v0, "cap_cache_exp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCapPollInterval()I
    .registers 2

    const-string/jumbo v0, "cap_poll_interval"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getClosedGroupChat()Z
    .registers 2

    const-string/jumbo v0, "closed_group_chat"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getConferenceDialogType()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "conference_dialog_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceReferUriAsserted()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "conference_referuri_asserted"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceReferUriType()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "conference_referuri_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceSubscribe()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "conference_subscribe"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceUri()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "conference_uri"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceUseAnonymousUpdate()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "conference_use_anonymous_update"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDbrTimer()I
    .registers 2

    const-string/jumbo v0, "dbr_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefaultMcc()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMnc()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeregTimeout(I)I
    .registers 5

    const/16 v2, 0xfa0

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string/jumbo v1, "dereg_timeout"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_10
    return v2
.end method

.method public getDisplayFormat()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "display_format"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayFormatHevc()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "display_format_hevc"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDmPollingPeriod()I
    .registers 2

    const-string/jumbo v0, "dm_polling_period"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "domain"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDtmfCodecMode()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "dtmf_codec_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDtmfMode()I
    .registers 2

    const-string/jumbo v0, "dtmf_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDtmfNbPayload()I
    .registers 2

    const-string/jumbo v0, "dtmf_nb_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDtmfWbPayload()I
    .registers 2

    const-string/jumbo v0, "dtmf_wb_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEarlyMediaRtpTimeoutTimer()I
    .registers 2

    const-string/jumbo v0, "early_media_rtp_timeout_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEmm()I
    .registers 2

    const-string/jumbo v0, "emm"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnableAvSync()Z
    .registers 2

    const-string/jumbo v0, "enable_av_sync"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableEvsCodec()I
    .registers 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_IMS_EnableEVS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "enable_evs_codec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getEnableMwi()I
    .registers 2

    const-string/jumbo v0, "enable_mwi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getEnableRtcpOnActiveCall()Z
    .registers 2

    const-string/jumbo v0, "enable_rtcp_on_active_call"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableScr()Z
    .registers 2

    const-string/jumbo v0, "enable_scr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableStatus()I
    .registers 2

    const-string/jumbo v0, "enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnabledNetwork()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iget-object v4, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v5, "network"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_31

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_31

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "enabled"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_31
    return-object v3
.end method

.method public getEncAlgorithm()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "enc_algo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBandwidthReceive()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_bandwidth_receive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBandwidthSend()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_bandwidth_send"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBitRateReceive()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_bit_rate_receive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBitRateSend()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_bit_rate_send"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsChannelAwareReceive()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_channel_aware_receive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsChannelRecv()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_channel_recv"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsChannelSend()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_channel_send"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsCodecModeRequest()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_codec_mode_request"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsDefaultBandwidth()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_default_bandwidth"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsDefaultBitrate()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_default_bitrate"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsDiscontinuousTransmission()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_discontinuous_transmission"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsDtxRecv()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_dtx_recv"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsHeaderFull()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_header_full"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsMaxRed()I
    .registers 2

    const-string/jumbo v0, "evs_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEvsModeSwitch()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "evs_mode_switch"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsPayload()I
    .registers 2

    const-string/jumbo v0, "evs_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExtImpuList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "ext_impu"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedPublishTimer()I
    .registers 2

    const-string/jumbo v0, "extended_publish_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExternalGtty()I
    .registers 2

    const-string/jumbo v0, "external_gtty"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFramerate()I
    .registers 2

    const-string/jumbo v0, "framerate"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFullCodecOfferRequired()Z
    .registers 2

    const-string/jumbo v0, "is_full_codec_offer_required"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getH263QcifPayload()I
    .registers 2

    const-string/jumbo v0, "h263_qcif_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264720pPayload()I
    .registers 2

    const-string/jumbo v0, "h264_720p_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264720plPayload()I
    .registers 2

    const-string/jumbo v0, "h264_720pl_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264CifPayload()I
    .registers 2

    const-string/jumbo v0, "h264_cif_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264CiflPayload()I
    .registers 2

    const-string/jumbo v0, "h264_cifl_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264QvgaPayload()I
    .registers 2

    const-string/jumbo v0, "h264_qvga_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264QvgalPayload()I
    .registers 2

    const-string/jumbo v0, "h264_qvgal_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264VgaPayload()I
    .registers 2

    const-string/jumbo v0, "h264_vga_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264VgalPayload()I
    .registers 2

    const-string/jumbo v0, "h264_vgal_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH265Hd720Payload()I
    .registers 2

    const-string/jumbo v0, "h265_hd720_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getId()I
    .registers 2

    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIgnoreRtcpTimeoutOnHoldCall()Z
    .registers 2

    const-string/jumbo v0, "ignore_rtcp_timeout_on_hold_call"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getImpi()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "impi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpuList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "impu"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInviteTimeout()I
    .registers 2

    const-string/jumbo v0, "invite_timeout"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIpVer()I
    .registers 4

    const/4 v2, 0x1

    const-string/jumbo v1, "ipver"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string/jumbo v1, "ipv4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v2

    :cond_14
    const-string/jumbo v1, "ipv6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x2

    return v1

    :cond_1f
    const-string/jumbo v1, "ipv4v6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x3

    return v1

    :cond_2a
    return v2
.end method

.method public getIpVersionName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ipver"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLboPcscfAddressList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "lbo_pcscf_address"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLboPcscfPort()I
    .registers 2

    const-string/jumbo v0, "lbo_pcscf_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxPTime()I
    .registers 2

    const-string/jumbo v0, "maxptime"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v1, "mcc"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "operator"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_21
    return-object v0
.end method

.method public getMdmnType()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "mdmn_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSe()I
    .registers 2

    const-string/jumbo v0, "min_se"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMnc()Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, "mnc"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "operator"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_21
    return-object v0
.end method

.method public getMnoName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "mnoname"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMssSize()I
    .registers 2

    const-string/jumbo v0, "mss_size"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMwiSubscribeExpiry()I
    .registers 2

    const-string/jumbo v0, "mwi_subscribe_expiry"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedAutoconfig()Z
    .registers 2

    const-string/jumbo v0, "need_autoconfig"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNeedNaptrDns()Z
    .registers 2

    const-string/jumbo v0, "need_naptr_dns"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNeedOmadmConfig()Z
    .registers 2

    const-string/jumbo v0, "need_omadm_config"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v5, "network"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2c

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2c

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_21} :catch_28

    move-result v4

    if-eqz v4, :cond_25

    return-object v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2c
    return-object v6
.end method

.method public getNetworkNameSet()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v4, "network"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_28

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_28

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_28
    return-object v2
.end method

.method public getNetworkSet()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v4, "network"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_30

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_30

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_30
    return-object v2
.end method

.method public getOperator()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getOperatorList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_c
    const-string/jumbo v1, "ImsProfile"

    const-string/jumbo v2, "operatorList is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1

    :cond_19
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getOperatorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "operator"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPTime()I
    .registers 2

    const-string/jumbo v0, "ptime"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPacketizationMode()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "packetization_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPcscfList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "pcscf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPcscfPreference()I
    .registers 2

    const-string/jumbo v0, "pcscf_pref"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPdn()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "pdn"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdnType()I
    .registers 4

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string/jumbo v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0xb

    return v1

    :cond_13
    const-string/jumbo v1, "internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    return v1

    :cond_1e
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    return v1

    :cond_29
    const-string/jumbo v1, "emergency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0xf

    return v1

    :cond_35
    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    return v2

    :cond_3f
    return v2
.end method

.method public getPollListSubExp()I
    .registers 2

    const-string/jumbo v0, "poll_list_sub_exp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPrecondtionInitialSendrecv()Z
    .registers 2

    const-string/jumbo v0, "precondtion_initial_sendrecv"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPriority()I
    .registers 2

    const-string/jumbo v0, "priority"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPrivacyHeaderRestricted()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "privacy_header_restricted"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublishErrRetryTimer()I
    .registers 2

    const-string/jumbo v0, "publish_err_retry_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPublishExpiry()I
    .registers 2

    const-string/jumbo v0, "publish_expiry"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPublishTimer()I
    .registers 2

    const-string/jumbo v0, "publish_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPullingServerUri()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "pulling_server_uri"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRPort()I
    .registers 2

    const-string/jumbo v0, "rport"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRTCPTimeout()I
    .registers 2

    const-string/jumbo v0, "rtcp_timeout"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRTPTimeout()I
    .registers 2

    const-string/jumbo v0, "rtp_timeout"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRcsConfigMark()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "config_version_mark"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRcsProfile()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RCS_BB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "joyn_blackbird"

    return-object v1

    :cond_18
    const-string/jumbo v1, "RCS_CPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string/jumbo v1, "joyn_cpr"

    return-object v1

    :cond_25
    const-string/jumbo v1, "RCS_UP10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string/jumbo v1, "UP_1.0"

    return-object v1

    :cond_32
    const-string/jumbo v1, "rcs_profile"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRcsTelephonyFeatureTagRequired()Z
    .registers 2

    const-string/jumbo v0, "is_rcs_telephony_feature_tag_required"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getRegExpire()I
    .registers 2

    const-string/jumbo v0, "reg_expires"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRegRetryBaseTime()I
    .registers 2

    const-string/jumbo v0, "reg_retry_base_time"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRegRetryMaxTime()I
    .registers 2

    const-string/jumbo v0, "reg_retry_max_time"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRegistrationAlgorithm()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "regi_algo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUriType()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "remote_uri_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReregiOnRatChange()I
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v2, "reregi_on_ratchange"

    invoke-virtual {p0, v2}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on_service_change"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :cond_12
    :goto_12
    return v0

    :cond_13
    const-string/jumbo v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v0, 0x2

    goto :goto_12
.end method

.method public getRingbackTimer()I
    .registers 2

    const-string/jumbo v0, "ringback_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRingingTimer()I
    .registers 2

    const-string/jumbo v0, "ringing_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSaClientPort()I
    .registers 2

    const-string/jumbo v0, "secure_client_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSaServerPort()I
    .registers 2

    const-string/jumbo v0, "secure_server_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScmVersion()I
    .registers 3

    const-string/jumbo v0, "scm_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSelfPort()I
    .registers 3

    const-string/jumbo v0, "self_port"

    const/16 v1, 0x13c4

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServiceSet(Ljava/lang/Integer;Z)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_39

    const-string/jumbo v3, "enabled"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    if-eqz p2, :cond_39

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const-string/jumbo v3, "services"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_39

    const-string/jumbo v3, "services"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_39
    return-object v2
.end method

.method public getSessionExpire()I
    .registers 2

    const-string/jumbo v0, "session_expires"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSessionRefreshMethod()I
    .registers 2

    const-string/jumbo v0, "session_refresh_method"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSessionRefresher()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "session_refresher"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSipMobility()I
    .registers 2

    const-string/jumbo v0, "sip_mobility"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSipPort()I
    .registers 2

    const-string/jumbo v0, "port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSipUserAgent()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "useragent"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsPsi()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "sms_psi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmscSet()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "smsc_set"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscribeForReg()I
    .registers 2

    const-string/jumbo v0, "subscribe_for_reg"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSubscribeMaxEntry()I
    .registers 2

    const-string/jumbo v0, "subscribe_max_entry"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSubscriberTimer()I
    .registers 2

    const-string/jumbo v0, "subscriber_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSupport183ForIr92v9Precondition()Z
    .registers 2

    const-string/jumbo v0, "support_183_for_ir92v9_precondition"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupport3gppUssi()Z
    .registers 2

    const-string/jumbo v0, "support_3gpp_ussi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportEct()Z
    .registers 2

    const-string/jumbo v0, "support_ect"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportIncomingHistoryInfo()Z
    .registers 2

    const-string/jumbo v0, "support_incoming_history_info"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportLtePreferred()Z
    .registers 2

    const-string/jumbo v0, "support_lte_preferred"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportMergeVideoConference()Z
    .registers 2

    const-string/jumbo v0, "support_merge_video_conference"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportUpgradeVideoConference()Z
    .registers 2

    const-string/jumbo v0, "support_upgrade_video_conference"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportedGeolocationPhase()I
    .registers 2

    const-string/jumbo v0, "supported_geolocation_phase"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTcpRstUacErrorcode()I
    .registers 2

    const-string/jumbo v0, "tcprst_uac_errorcode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTcpRstUasErrorcode()I
    .registers 2

    const-string/jumbo v0, "tcprst_uas_errorcode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTextPort()I
    .registers 2

    const-string/jumbo v0, "text_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTimer1()I
    .registers 2

    const-string/jumbo v0, "1"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimer2()I
    .registers 2

    const-string/jumbo v0, "2"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimer4()I
    .registers 2

    const-string/jumbo v0, "4"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerA()I
    .registers 2

    const-string/jumbo v0, "A"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerB()I
    .registers 2

    const-string/jumbo v0, "B"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerC()I
    .registers 2

    const-string/jumbo v0, "C"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerD()I
    .registers 2

    const-string/jumbo v0, "D"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerE()I
    .registers 2

    const-string/jumbo v0, "E"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerF()I
    .registers 2

    const-string/jumbo v0, "F"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerG()I
    .registers 2

    const-string/jumbo v0, "G"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerH()I
    .registers 2

    const-string/jumbo v0, "H"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerI()I
    .registers 2

    const-string/jumbo v0, "I"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerJ()I
    .registers 2

    const-string/jumbo v0, "J"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerK()I
    .registers 2

    const-string/jumbo v0, "K"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTransport()I
    .registers 3

    const-string/jumbo v1, "transport"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string/jumbo v1, "udp-preferred"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    :cond_14
    const-string/jumbo v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x2

    return v1

    :cond_1f
    const-string/jumbo v1, "tcp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x3

    return v1

    :cond_2a
    const-string/jumbo v1, "tls"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x4

    return v1

    :cond_35
    const/4 v1, -0x1

    return v1
.end method

.method public getTransportName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "transport"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtyType()I
    .registers 6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_VoiceCall_SupportRTT"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "tty_type"

    invoke-virtual {p0, v2}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "ImsProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRttSupportByCallApp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ttyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_46

    const/4 v2, 0x3

    if-eq v1, v2, :cond_43

    const/4 v2, 0x4

    if-ne v1, v2, :cond_46

    :cond_43
    add-int/lit8 v2, v1, -0x2

    return v2

    :cond_46
    return v1
.end method

.method public getUse183OnProgressIncoming()Z
    .registers 2

    const-string/jumbo v0, "use_183_on_progress_incoming"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUsePemHeader()Z
    .registers 2

    const-string/jumbo v0, "use_pem_header"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUsePrecondition()I
    .registers 2

    const-string/jumbo v0, "use_precondition"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getUseProvisionalResponse100rel()Z
    .registers 2

    const-string/jumbo v0, "use_provisional_response_100rel"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getVideoAS()I
    .registers 2

    const-string/jumbo v0, "video_as"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoAvpf()I
    .registers 2

    const-string/jumbo v0, "video_avpf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoCodec()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "video_codec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoPortEnd()I
    .registers 2

    const-string/jumbo v0, "video_port_end"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoPortStart()I
    .registers 2

    const-string/jumbo v0, "video_port_start"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoRR()I
    .registers 2

    const-string/jumbo v0, "video_rr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoRS()I
    .registers 2

    const-string/jumbo v0, "video_rs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoRtcpXr()I
    .registers 2

    const-string/jumbo v0, "video_rtcpxr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoSrtp()I
    .registers 2

    const-string/jumbo v0, "video_srtp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasEmergencySupport()Z
    .registers 2

    const-string/jumbo v0, "emergency_support"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSet()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    return v2

    :cond_20
    const/4 v2, 0x0

    return v2
.end method

.method public hasService(Ljava/lang/String;I)Z
    .registers 5

    const/4 v1, -0x1

    if-ne p2, v1, :cond_8

    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSet()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method public hashCode()I
    .registers 4

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->hashCode()I

    move-result v1

    :goto_10
    add-int v0, v2, v1

    return v0

    :cond_13
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public isAllowedOnRoaming()Z
    .registers 2

    const-string/jumbo v0, "support_roaming"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isAnonymousFetch()Z
    .registers 2

    const-string/jumbo v0, "anonymous_fetch"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnableGruu()I
    .registers 2

    const-string/jumbo v0, "enable_gruu"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isEpdgSupported()Z
    .registers 3

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ims"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isGzipEnabled()Z
    .registers 2

    const-string/jumbo v0, "enable_gzip"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isIpSecEnabled()Z
    .registers 2

    const-string/jumbo v0, "support_ipsec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isMsrpBearerUsed()Z
    .registers 2

    const-string/jumbo v0, "use_msrp_bearer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isNetworkEnabled(I)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isProper()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public isRegEnabled()Z
    .registers 2

    const-string/jumbo v0, "reg_enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSamsungMdmnEnabled()Z
    .registers 3

    const-string/jumbo v0, "Samsung"

    const-string/jumbo v1, "mdmn_type"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSipUriOnly()Z
    .registers 2

    const-string/jumbo v0, "sip_uri_only"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSoftphoneEnabled()Z
    .registers 3

    const-string/jumbo v0, "Softphone"

    const-string/jumbo v1, "mdmn_type"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSupportSmsOverIms()Z
    .registers 2

    const-string/jumbo v0, "support_sms_over_ims"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupportVideoCapabilities()Z
    .registers 2

    const-string/jumbo v0, "video_capabilities"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUicclessEmergency()Z
    .registers 2

    const-string/jumbo v0, "uiccless_emergency"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVceConfigEnabled()Z
    .registers 2

    const-string/jumbo v0, "vce_config_enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVolteServiceStatus()Z
    .registers 2

    const-string/jumbo v0, "volte_service_status"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isWifiPreConditionEnabled()Z
    .registers 2

    const-string/jumbo v0, "wifi_precondition_enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_16
    return-void

    :cond_17
    iget-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_16

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_16
.end method

.method public removeImpu(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "app_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAudioPortEnd(I)V
    .registers 4

    const-string/jumbo v0, "audio_port_end"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setAudioPortStart(I)V
    .registers 4

    const-string/jumbo v0, "audio_port_start"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setAuthAlgorithm(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "auth_algo"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAuthName(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "authname"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "display_name"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "domain"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEmergencySupport(Z)V
    .registers 4

    const-string/jumbo v0, "emergency_support"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setEnableEvsCodec(Z)V
    .registers 4

    const-string/jumbo v0, "enable_evs_codec"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setEnableScr(Z)V
    .registers 4

    const-string/jumbo v0, "enable_scr"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setEncAlgorithm(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "enc_algo"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBandwidthReceive(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_bandwidth_receive"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBandwidthSend(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_bandwidth_send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBitRateReceive(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_bit_rate_receive"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBitRateSend(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_bit_rate_send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsChannelAwareReceive(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_channel_aware_receive"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsChannelRecv(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_channel_recv"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsChannelSend(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_channel_send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsCodecModeRequest(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_codec_mode_request"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsDefaultBandwidth(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_default_bandwidth"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsDefaultBitrate(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_default_bitrate"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsDiscontinuousTransmission(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_discontinuous_transmission"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsDtxRecv(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_dtx_recv"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsHeaderFull(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_header_full"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsModeSwitch(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "evs_mode_switch"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsPayload(I)V
    .registers 4

    const-string/jumbo v0, "evs_payload"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setExtImpuList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_15

    const-string/jumbo v0, "ImsProfile"

    const-string/jumbo v1, "setExtImpuList: impuList is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ext_impu"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    const-string/jumbo v0, "ext_impu"

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public setId(I)V
    .registers 4

    const-string/jumbo v0, "id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setImpi(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "impi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setImpuList(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "impu"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIpSpecEnabled(Z)V
    .registers 4

    const-string/jumbo v0, "support_ipsec"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setIpVer(I)V
    .registers 4

    packed-switch p1, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong ipVer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    const-string/jumbo v0, "ipver"

    const-string/jumbo v1, "ipv4"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void

    :pswitch_16
    const-string/jumbo v0, "ipver"

    const-string/jumbo v1, "ipv6"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :pswitch_20
    const-string/jumbo v0, "ipver"

    const-string/jumbo v1, "ipv4v6"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_16
        :pswitch_20
    .end packed-switch
.end method

.method public setIsSipUriOnly(Z)V
    .registers 4

    const-string/jumbo v0, "sip_uri_only"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setLboPcscfAddressList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "lbo_pcscf_address"

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLboPcscfPort(I)V
    .registers 4

    const-string/jumbo v0, "lbo_pcscf_port"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "mcc"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "mnc"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMnoName(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "mnoname"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMsrpBearerUsed(Z)V
    .registers 4

    const-string/jumbo v0, "use_msrp_bearer"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setMssSize(I)V
    .registers 4

    const-string/jumbo v0, "mss_size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNeedAutoconfig(Z)V
    .registers 4

    const-string/jumbo v0, "need_autoconfig"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setNeedNaptrDns(Z)V
    .registers 4

    const-string/jumbo v0, "need_naptr_dns"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setNeedOmadmConfig(Z)V
    .registers 4

    const-string/jumbo v0, "need_omadm_config"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setNetworkEnabled(IZ)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2f

    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_36

    :try_start_b
    const-string/jumbo v4, "type"

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "services"

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v5, "network"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_2e} :catch_3b

    move-object v1, v2

    :cond_2f
    :goto_2f
    :try_start_2f
    const-string/jumbo v4, "enabled"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    :goto_37
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_35

    :catch_3b
    move-exception v0

    move-object v1, v2

    goto :goto_37

    :cond_3e
    move-object v1, v2

    goto :goto_2f
.end method

.method public setNetworkEnabled(Ljava/lang/String;Z)V
    .registers 4

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    return-void
.end method

.method public setNetworkList(Ljava/lang/String;)V
    .registers 15

    const-string/jumbo v9, "\\s*,\\s*"

    invoke-static {p1, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v10, "network"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_60

    const-string/jumbo v9, ","

    invoke-static {p1, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_1f
    if-ge v9, v11, :cond_3f

    aget-object v7, v10, v9

    invoke-virtual {p0, v7}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_37

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_2e
    const-string/jumbo v12, "type"

    invoke-virtual {v6, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_34} :catch_3a

    :goto_34
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_37
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_34

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_60

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    move v1, v2

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_60
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v2, "operator"

    new-instance v3, Lorg/json/JSONArray;

    const-string/jumbo v4, "\\s*,\\s*"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_18
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPcscfList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "pcscf"

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPcscfPreference(I)V
    .registers 4

    const-string/jumbo v0, "pcscf_pref"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setPdn(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "pdn"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPriority(I)V
    .registers 4

    const-string/jumbo v0, "priority"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setRPort(I)V
    .registers 4

    const-string/jumbo v0, "rport"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setRcsProfile(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "rcs_profile"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRegEnabled(Z)V
    .registers 4

    const-string/jumbo v0, "reg_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setRegistrationAlgorithm(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "regi_algo"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReregiOnRatChange(I)V
    .registers 4

    packed-switch p1, :pswitch_data_22

    const-string/jumbo v0, "reregi_on_ratchange"

    const-string/jumbo v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return-void

    :pswitch_d
    const-string/jumbo v0, "reregi_on_ratchange"

    const-string/jumbo v1, "on_service_change"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :pswitch_17
    const-string/jumbo v0, "reregi_on_ratchange"

    const-string/jumbo v1, "on"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_d
        :pswitch_17
    .end packed-switch
.end method

.method public setSaClientPort(I)V
    .registers 4

    const-string/jumbo v0, "secure_client_port"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setSaServerPort(I)V
    .registers 4

    const-string/jumbo v0, "secure_server_port"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setServiceSet(ILjava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_17

    :try_start_6
    const-string/jumbo v2, "services"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_11

    :cond_17
    const-string/jumbo v2, "ImsProfile"

    const-string/jumbo v3, "setServiceSet: getNetwork return null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public setSipPort(I)V
    .registers 4

    const-string/jumbo v0, "port"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setSipUserAgent(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "useragent"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSmsPsi(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "sms_psi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSoftphoneEnabled(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "mdmn_type"

    const-string/jumbo v1, "Softphone"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSupport3gppUssi(Z)V
    .registers 4

    const-string/jumbo v0, "support_3gpp_ussi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupportIncomingHistoryInfo(Z)V
    .registers 4

    const-string/jumbo v0, "support_incoming_history_info"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupportSmsOverIms(Z)V
    .registers 4

    const-string/jumbo v0, "support_sms_over_ims"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupportedGeolocationPhase(I)V
    .registers 4

    const-string/jumbo v0, "supported_geolocation_phase"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setTimer(Ljava/lang/String;I)V
    .registers 9

    invoke-direct {p0}, Lcom/sec/ims/settings/ImsProfile;->getTimerMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_4a
    const-string/jumbo v4, "timer"

    const-string/jumbo v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTimer1(I)V
    .registers 3

    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimer2(I)V
    .registers 3

    const-string/jumbo v0, "2"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimer4(I)V
    .registers 3

    const-string/jumbo v0, "4"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerA(I)V
    .registers 3

    const-string/jumbo v0, "A"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerB(I)V
    .registers 3

    const-string/jumbo v0, "B"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerC(I)V
    .registers 3

    const-string/jumbo v0, "C"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerD(I)V
    .registers 3

    const-string/jumbo v0, "D"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerE(I)V
    .registers 3

    const-string/jumbo v0, "E"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerF(I)V
    .registers 3

    const-string/jumbo v0, "F"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerG(I)V
    .registers 3

    const-string/jumbo v0, "G"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerH(I)V
    .registers 3

    const-string/jumbo v0, "H"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerI(I)V
    .registers 3

    const-string/jumbo v0, "I"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerJ(I)V
    .registers 3

    const-string/jumbo v0, "J"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerK(I)V
    .registers 3

    const-string/jumbo v0, "K"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTransport(I)V
    .registers 4

    packed-switch p1, :pswitch_data_34

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong transport type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    const-string/jumbo v0, "transport"

    const-string/jumbo v1, "udp-preferred"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void

    :pswitch_16
    const-string/jumbo v0, "transport"

    const-string/jumbo v1, "udp"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :pswitch_20
    const-string/jumbo v0, "transport"

    const-string/jumbo v1, "tcp"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :pswitch_2a
    const-string/jumbo v0, "transport"

    const-string/jumbo v1, "tls"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_c
        :pswitch_16
        :pswitch_20
        :pswitch_2a
    .end packed-switch
.end method

.method public setUicclessEmergency(Z)V
    .registers 4

    const-string/jumbo v0, "uiccless_emergency"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setVceConfigEnabled(Z)V
    .registers 4

    const-string/jumbo v0, "vce_config_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setVideoPortEnd(I)V
    .registers 4

    const-string/jumbo v0, "video_port_end"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setVideoPortStart(I)V
    .registers 4

    const-string/jumbo v0, "video_port_start"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public shouldUseCompactHeader()Z
    .registers 2

    const-string/jumbo v0, "sip_compact_header"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pdn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transport : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", roaming : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", scmversion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getScmVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", selfport : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSelfPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", emergency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/ContentValues;)V
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string/jumbo v4, "\\[.*\\]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_8

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_32
    return-void

    :cond_33
    :try_start_33
    iget-object v4, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_3c} :catch_2e

    goto :goto_8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
