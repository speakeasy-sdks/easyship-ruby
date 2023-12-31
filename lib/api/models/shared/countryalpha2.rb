# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Easyship
  module Shared
    # CountryAlpha2 - Country Code in Alpha-2 format (ISO 3166-1)
    class CountryAlpha2 < T::Enum
      enums do
        AD = new('AD')
        AE = new('AE')
        AF = new('AF')
        AG = new('AG')
        AI = new('AI')
        AL = new('AL')
        AM = new('AM')
        AN = new('AN')
        AO = new('AO')
        AQ = new('AQ')
        AR = new('AR')
        AS = new('AS')
        AT = new('AT')
        AU = new('AU')
        AW = new('AW')
        AX = new('AX')
        AZ = new('AZ')
        BA = new('BA')
        BB = new('BB')
        BD = new('BD')
        BE = new('BE')
        BF = new('BF')
        BG = new('BG')
        BH = new('BH')
        BI = new('BI')
        BJ = new('BJ')
        BL = new('BL')
        BM = new('BM')
        BN = new('BN')
        BO = new('BO')
        BQ = new('BQ')
        BR = new('BR')
        BS = new('BS')
        BT = new('BT')
        BV = new('BV')
        BW = new('BW')
        BY = new('BY')
        BZ = new('BZ')
        CA = new('CA')
        CC = new('CC')
        CD = new('CD')
        CF = new('CF')
        CG = new('CG')
        CH = new('CH')
        CI = new('CI')
        CK = new('CK')
        CL = new('CL')
        CM = new('CM')
        CN = new('CN')
        CO = new('CO')
        CR = new('CR')
        CU = new('CU')
        CV = new('CV')
        CW = new('CW')
        CX = new('CX')
        CY = new('CY')
        CZ = new('CZ')
        DE = new('DE')
        DJ = new('DJ')
        DK = new('DK')
        DM = new('DM')
        DO = new('DO')
        DZ = new('DZ')
        EC = new('EC')
        EE = new('EE')
        EG = new('EG')
        EH = new('EH')
        ER = new('ER')
        ES = new('ES')
        ET = new('ET')
        FI = new('FI')
        FJ = new('FJ')
        FK = new('FK')
        FM = new('FM')
        FO = new('FO')
        FR = new('FR')
        GA = new('GA')
        GB = new('GB')
        GD = new('GD')
        GE = new('GE')
        GF = new('GF')
        GG = new('GG')
        GH = new('GH')
        GI = new('GI')
        GL = new('GL')
        GM = new('GM')
        GN = new('GN')
        GP = new('GP')
        GQ = new('GQ')
        GR = new('GR')
        GS = new('GS')
        GT = new('GT')
        GU = new('GU')
        GW = new('GW')
        GY = new('GY')
        HK = new('HK')
        HM = new('HM')
        HN = new('HN')
        HR = new('HR')
        HT = new('HT')
        HU = new('HU')
        ID = new('ID')
        IE = new('IE')
        IL = new('IL')
        IM = new('IM')
        IN = new('IN')
        IO = new('IO')
        IQ = new('IQ')
        IR = new('IR')
        IS = new('IS')
        IT = new('IT')
        JE = new('JE')
        JM = new('JM')
        JO = new('JO')
        JP = new('JP')
        KE = new('KE')
        KG = new('KG')
        KH = new('KH')
        KI = new('KI')
        KM = new('KM')
        KN = new('KN')
        KP = new('KP')
        KR = new('KR')
        KW = new('KW')
        KY = new('KY')
        KZ = new('KZ')
        LA = new('LA')
        LB = new('LB')
        LC = new('LC')
        LI = new('LI')
        LK = new('LK')
        LR = new('LR')
        LS = new('LS')
        LT = new('LT')
        LU = new('LU')
        LV = new('LV')
        LY = new('LY')
        MA = new('MA')
        MC = new('MC')
        MD = new('MD')
        ME = new('ME')
        MF = new('MF')
        MG = new('MG')
        MH = new('MH')
        MK = new('MK')
        ML = new('ML')
        MM = new('MM')
        MN = new('MN')
        MO = new('MO')
        MP = new('MP')
        MQ = new('MQ')
        MR = new('MR')
        MS = new('MS')
        MT = new('MT')
        MU = new('MU')
        MV = new('MV')
        MW = new('MW')
        MX = new('MX')
        MY = new('MY')
        MZ = new('MZ')
        NA = new('NA')
        NC = new('NC')
        NE = new('NE')
        NF = new('NF')
        NG = new('NG')
        NI = new('NI')
        NL = new('NL')
        NO = new('NO')
        NP = new('NP')
        NR = new('NR')
        NU = new('NU')
        NZ = new('NZ')
        OM = new('OM')
        PA = new('PA')
        PE = new('PE')
        PF = new('PF')
        PG = new('PG')
        PH = new('PH')
        PK = new('PK')
        PL = new('PL')
        PM = new('PM')
        PN = new('PN')
        PR = new('PR')
        PS = new('PS')
        PT = new('PT')
        PW = new('PW')
        PY = new('PY')
        QA = new('QA')
        RE = new('RE')
        RO = new('RO')
        RS = new('RS')
        RU = new('RU')
        RW = new('RW')
        SA = new('SA')
        SB = new('SB')
        SC = new('SC')
        SD = new('SD')
        SE = new('SE')
        SG = new('SG')
        SH = new('SH')
        SI = new('SI')
        SJ = new('SJ')
        SK = new('SK')
        SL = new('SL')
        SM = new('SM')
        SN = new('SN')
        SO = new('SO')
        SR = new('SR')
        SS = new('SS')
        ST = new('ST')
        SV = new('SV')
        SX = new('SX')
        SY = new('SY')
        SZ = new('SZ')
        TC = new('TC')
        TD = new('TD')
        TF = new('TF')
        TG = new('TG')
        TH = new('TH')
        TJ = new('TJ')
        TK = new('TK')
        TL = new('TL')
        TM = new('TM')
        TN = new('TN')
        TO = new('TO')
        TR = new('TR')
        TT = new('TT')
        TV = new('TV')
        TW = new('TW')
        TZ = new('TZ')
        UA = new('UA')
        UG = new('UG')
        UM = new('UM')
        US = new('US')
        UY = new('UY')
        UZ = new('UZ')
        VA = new('VA')
        VC = new('VC')
        VE = new('VE')
        VG = new('VG')
        VI = new('VI')
        VN = new('VN')
        VU = new('VU')
        WF = new('WF')
        WS = new('WS')
        YE = new('YE')
        YT = new('YT')
        ZA = new('ZA')
        ZM = new('ZM')
        ZW = new('ZW')
      end
    end

  end
end
